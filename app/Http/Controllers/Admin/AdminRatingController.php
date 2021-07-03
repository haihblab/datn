<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Rating;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminRatingController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->idRating;
            $rating = Rating::find($id);
            $rating->r_status = !$rating->r_status;
            $rating->save();
            $ratings     = Rating::orderBy('id', 'DESC')->paginate(15);
            $query  = $request->all();
            $html = view('admin.rating.data', compact('ratings', 'query'))->render();
            return response([
                'data'      => $html ?? null,
                'messages'  => 'oke !',
                'query' => $request->query()
            ]);
        }
        $query = $request->query();
        $ratings = Rating::with('product:id,pro_name,pro_slug', 'user:id,name')
            ->orderByDesc('id')->paginate(15);
        $viewData = [
            'ratings'   => $ratings,
            'query' => $query
        ];
        return view('admin.rating.index', $viewData);
    }

    public function delete(Request $request, $id)
    {
        DB::beginTransaction();
        $rating = Rating::find($id);
        if ($rating) {
            try {
                $product = Product::find($rating->r_product_id);
                $product->pro_review_total--;
                $product->pro_review_star -= $rating->r_number;
                $product->save();

                $rating->delete();
                DB::commit();
                $request->session()->flash('toastr', [
                    'type'      => 'success',
                    'message'   => 'delete thành công !'
                ]);
                return redirect()->back();
            } catch (\Exception $e) {
                DB::rollBack();
            }
        }
        $request->session()->flash('toastr', [
            'type'      => 'error',
            'message'   => 'Không tồn tại rating !'
        ]);
        return redirect()->back();
    }

    public function active(Request $request, $id)
    {
        $rating = Rating::find($id);
        $rating->r_status = !$rating->r_status;
        $rating->save();

        if ($request->ajax()) {
            $ratings     = Rating::orderBy('id', 'DESC')->paginate(15)->withQueryString();
            $query  = $request->all();
            $html = view('admin.rating.data', compact('ratings', 'query'))->render();
            return response([
                'data'      => $html ?? null,
                'messages'  => 'Update status thành công !',
                'query' => $ratings
            ]);
        }
        return redirect()->back();
    }

    public function viewDetail(Request $request, $id)
    {
        if ($request->ajax()) {
            $rating = Rating::find($id);
            $html = view('admin.rating.data_view', compact('rating'))->render();
            return response([
                'data' => $html ?? null,
                'messages' => 'oke !',
            ]);
        }
        return redirect()->back();
    }
}
