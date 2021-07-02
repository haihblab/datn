<?php

namespace App\Http\Controllers\Frontend;

use App\Events\NotificationEvent;
use App\Http\Controllers\Controller;
use App\Mail\TransactionSuccess;
use App\Models\Order;
use App\Models\Product;
use App\Models\Transaction;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

class ShoppingCartController extends Controller
{
    public function index()
    {
        $shopping = \Cart::content();
        $viewData = [
            'shopping'  => $shopping,
            'title_page' => 'Danh Sách Giỏ Hàng'
        ];
        return view('frontend.pages.shopping.index', $viewData);
    }

    //them gio hang
    public function add(Request $request, $id)
    {
        $product = Product::find($id);
        if ($request->ajax()) {
            if (!$product) {
                return redirect()->to('/');
            }
            \Cart::add([
                'id'        => $product->id,
                'name'      => $product->pro_name,
                'qty'       => 1,
                'price'     => number_price($product->pro_price, $product->pro_sale),
                'weight'    => 1,
                'options'   => [
                    'sale' => $product->pro_sale,
                    'price_old' => $product->pro_price,
                    'image' => $product->pro_avatar
                ]
            ]);
            return response([
                'messages'  => 'Bạn Đã Thêm Thành Công !',
                'total_qty' => \Cart::count(),
            ]);
        }

        $product = Product::find($id);
        //1. kiem tra ton tai san pham
        if (!$product) {
            return redirect()->to('/');
        }
        if (isset($request->quantity)) {
            $sl = $request->quantity;
        } else {
            $sl = 1;
        }

        //2. kiem tra so luong san pham
        if (($product->pro_number - $product->pro_pay) < $sl) {
            \Session::flash('toastr', [
                'type'      => 'error',
                'message'   => 'Số lượng sản phẩm không đủ !'
            ]);
            return redirect()->back();
        }

        //3. them san pham vao gio hang
        \Cart::add([
            'id'        => $product->id,
            'name'      => $product->pro_name,
            'qty'       => $sl,
            'price'     => number_price($product->pro_price, $product->pro_sale),
            'weight'    => 1,
            'options'   => [
                'sale' => $product->pro_sale,
                'price_old' => $product->pro_price,
                'image' => $product->pro_avatar
            ]
        ]);
        \Session::flash('toastr', [
            'type'      => 'success',
            'message'   => 'Đã Thêm Mới 1 SP vào giỏ hàng !'
        ]);
        return redirect()->back();
    }

    public function delete(Request $request, $rowId)
    {
        \Cart::remove($rowId);
        if ($request->ajax()) {
            return response([
                'data' => 'Bạn Xóa 1 sản phẩm thành công nhen !',
                'total' => \Cart::subtotal(0),
                'total_qty' => \Cart::count()
            ]);
        }
        \Session::flash('toastr', [
            'type'      => 'error',
            'message'   => 'Bạn Đã Xóa 1 SP Trong Giỏ Hàng !',
            'total'     => \Cart::subtotal(0),
        ]);

        return redirect()->back();
    }

    public function update(Request $request, $id)
    {
        if ($request->ajax()) {
            $qty            = $request->number ?? 1;
            $productID      = $request->productID;
            $product        = Product::find($productID);

            if (!$product) {
                return response(['data' => 'không tòn tại sp cần update !']);
            }
            if (($product->pro_number - $product->pro_pay) < $qty) {
                return response(
                    [
                        'data' => 'Số lượng không có đủ nhá !',
                        'error' => true
                    ]
                );
            }
            \Cart::update($id, $qty);
            return response(
                [
                    'data' => 'Thành công nhen !',
                    'total' => \Cart::subtotal(0),
                    'total_qty' => \Cart::count(),
                    'totalitem' => number_format(number_price($product->pro_price, $product->pro_sale) * $qty, 0, ',', '.')
                ]
            );
        }
    }

    public function postPay(Request $request)
    {
        if (\Cart::count() <= 0) {
            $request->session()->flash('toastr', [
                'type'      => 'warning',
                'message'   => 'Không có sản phẩm nào để thanh toán !'
            ]);
            return redirect('/');
        }
        DB::beginTransaction();
        $data = $request->except('_token');
        if (isset(Auth::user()->id)) {
            $data['tst_user_id'] = Auth::user()->id;

            $email = Auth::user()->email;
            $name = Auth::user()->name;
            $phone = Auth::user()->phone;
            $address = Auth::user()->address;

            $data['tst_total_money'] = str_replace(',', '', \Cart::subtotal(0));
            $data['tst_name'] = $name;
            $data['tst_email'] = $email;
            $data['tst_phone'] = $phone;
            $data['tst_address'] = $address;
        } else {
            $email = $request->tst_email;
            $name = $request->tst_name;
            $phone = $request->tst_phone;
            $address = $request->tst_address;
            $data['tst_total_money'] = str_replace(',', '', \Cart::subtotal(0));
        }
        try {
            $transaction = Transaction::query()->create($data);
        } catch (\Throwable $th) {
            DB::rollBack();
            return redirect()->route('get.home');
        }
        if ($transaction) {
            $shopping = \Cart::content();

            foreach ($shopping as $key => $item) {
                try {
                    // luu chitietdonhang
                    Order::create([
                        'od_transaction_id'     => $transaction->id,
                        'od_product_id'         => $item->id,
                        'od_sale'               => $item->options->sale,
                        'od_qty'                => $item->qty,
                        'od_price'              => $item->price
                    ]);
                    //pro_pay luot mua
                    DB::table('products')->where('id', $item->id)->increment('pro_pay', $item->qty);
                    // DB::table('products')->where('id',$item->id)->decrement('pro_number',$item->qty);
                } catch (\Throwable $th) {
                    DB::rollBack();
                    return redirect()->route('get.home');
                }
            }
            Mail::to($email)->send(new TransactionSuccess($shopping, $name));
        }
        DB::commit();
        $dataMessage = [
            'name' => $name,
            'message' => 'Vừa mua sản phẩm.',
            'created_at' => Carbon::now('Asia/Ho_Chi_Minh'),
        ];
        event(new NotificationEvent($dataMessage));
        return redirect()->route('get.success.list')->with(['success' => 'ok', 'email' => $email, 'address' => $address, 'name' => $name, 'phone' => $phone]);
    }

    public function success()
    {
        $cart       = \Cart::content();
        $total      = \Cart::subtotal(0);
        $viewData = [
            'cart'      => $cart,
            'total'     => $total,
            'title_page' => 'Cảm ơn bạn đã tin tưởng bên mình'
        ];
        return view('frontend.pages.shopping.success', $viewData);
    }

    public function delete_all_shopping()
    {
        \Cart::destroy();
    }
}
