<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\Slide;
use App\Models\TypeProduct;
use Illuminate\Http\Request;
use Illuminate\Support\Env;

class HomeController extends Controller
{
    public function index()
    {
        $DHCH = (int)config('contants.ID_CATEGORY_DEFAULT.DHCH');
        $KM = (int)config('contants.ID_CATEGORY_DEFAULT.KM');
        $PKDH = (int)config('contants.ID_CATEGORY_DEFAULT.PKDH');
        $STATUS_ACTIVE = (int)config('contants.STATUS.active');
        $HOT_HOT = (int)config('contants.HOT.hot');

        // lay ra 6 san pham theo đồng hồ chính hãng xắp xếp theo lượt mua
        $proPayDHCH = $this->getProPay($DHCH);

        // lay ra 6 san pham theo Kính Thời Trang xắp xếp theo lượt mua
        $proPayKTT = $this->getProPay($KM);

        // lay ra 6 san pham theo Phụ Kiện Đồng Hồ xắp xếp theo lượt mua
        $proPayPKDD = $this->getProPay($PKDH);

        // lay ra 6 san pham dang sale xăp xếp theo id mới nhất
        $proSaleAll = Product::where([['pro_sale', '>', 0], ['pro_active', '=', $STATUS_ACTIVE]])
            ->orderByDesc('id')
            ->limit(6)
            ->get();

        // danh sách slide xắp xếp theo thứ tự sort
        $slides = Slide::where('sd_active', $STATUS_ACTIVE)
            ->orderBy('sd_sort', 'asc')
            ->get();

        $proHot = Product::where([
            'pro_active' => $STATUS_ACTIVE,
            'pro_hot'    => $HOT_HOT
        ])->orderByDesc('id')
            ->limit(5)
            ->get();



        // danh sach san pham theo category đồng hồ
        $proCate3 = Category::with([
            'products'   => function ($q) use ($STATUS_ACTIVE) {
                return $q->where('pro_active', $STATUS_ACTIVE)->orderByDesc('id');
            }
        ])->where('c_parent_id', $DHCH)
            ->limit(3)
            ->get();

        // dd($proCate3);

        // lấy ra image đồng hồ có
        $imageCate = Category::where([['c_status', '=', $STATUS_ACTIVE], ['c_parent_id', '>', 0]])
            ->limit(6)->get();


        // $event1 = Event::where('e_position_1', 1)->first();

        $typeproducts = TypeProduct::where('tp_hot', $HOT_HOT)->get();

        $viewData = [
            'proHot'        => $proHot,
            'title_page'    => env('APP_NAME'),
            'slides'        => $slides,
            // 'event1'        => $event1,
            'proPayDHCH'    => $proPayDHCH,
            'proPayKTT'     => $proPayKTT,
            'proPayPKDD'    => $proPayPKDD,
            'proSaleAll'    => $proSaleAll,
            'proCate3'      => $proCate3,
            'imageCate'     => $imageCate,
            'typeproducts'  => $typeproducts
        ];
        return view('frontend.pages.home.index', $viewData);
    }

    public function getProPay($idcate)
    {
        $STATUS_ACTIVE = (int)config('contants.STATUS.active');
        $categoryok = Category::where('c_parent_id', $idcate)
            ->where('c_status', $STATUS_ACTIVE)
            ->pluck('id')
            ->push($idcate)
            ->all();
        $pro = Product::whereIn('pro_category_id', $categoryok)
            ->where('pro_active', $STATUS_ACTIVE)
            ->orderByDesc('pro_pay')->limit(6)->get();
        return $pro;
    }
}
