<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use Illuminate\Support\Str;
use Carbon\Carbon;

class AdminCategoryController extends Controller
{
    public function index(Request $request){
        $categorys = Category::query()->orderBy('id', 'DESC')->paginate(20);
        if($request->ajax()){
            $a = $request->search;
            if($a == null || $a == '' ){
                $categorys = Category::query()->orderBy('id', 'DESC')->paginate(20);
                $query  = $request->query();
                $html = view('admin.category.data',compact('categorys','query'))->render();
                return response([
                    'data'      => $html ?? null,
                    'messages'  => 'Update status thành công !'
                ]);
            }
            $categorys = Category::query()->where('c_slug','like',$a.'%')->orderBy('id', 'DESC')->paginate(20);
            $query  = $request->query();
            $html = view('admin.category.data',compact('categorys','query'))->render();
            return response([
                'data'      => $html ?? null,
                'messages'  => 'Update status thành công !'
            ]);
        }
        return view('admin.category.index',compact('categorys'));
    }

    public function create(){
        $categorys = Category::all();
        // dd($categorys);
        return view('admin.category.create',compact('categorys'));
    }

    public function store(Request $request){
        $data = $request->except('_token','c_avatar');
        $data['c_slug']         = Str::slug($request->c_name);
        if ($request->c_avatar) {
            $image = upload_image('c_avatar');
            if ($image['code'] == 1) {
                $data['c_avatar'] = $image['name'];
            }
        }
        Category::create($data);
        $request->session()->flash('toastr',[
            'type'      => 'success',
            'message'   => 'Insert thành công !'
        ]);
        return redirect()->back();
    }

    public function edit($id){
        $categorys = Category::all();
        $category = Category::findOrfail($id);
        return view('admin.category.update',compact('category','categorys'));
    }

    public function update(Request $request,$id){
        $category = Category::findOrfail($id);
        $data = $request->except('_token','c_avatar');
        $data['c_slug']         = Str::slug($request->c_name);
        if ($request->c_avatar) {
            $image = upload_image('c_avatar');
            if ($image['code'] == 1) {
                $data['c_avatar'] = $image['name'];
            }
        }
        $category->update($data);
        $request->session()->flash('toastr',[
            'type'      => 'success',
            'message'   => 'update thành công !'
        ]);
        return redirect()->back();
    }

    public function delete($id){
        $category = Category::findOrfail($id);
        $category->delete();
        return redirect()->back();
    }

    public function hot(Request $request, $id)
    {
        $category           = Category::findOrfail($id);
        $category->c_hot = !$category->c_hot;
        $category->updated_at = Carbon::now();
        $category->save();

        if ($request->ajax()) {
            $categorys     = Category::orderBy('id', 'DESC')->paginate(20);
            $query  = $request->query();
            $html = view('admin.category.data',compact('categorys','query'))->render();
            return response([
                'data'      => $html ?? null,
                'messages'  => 'Update hot thành công !'
            ]);
        }
        return redirect()->back();
    }

    public function active(Request $request, $id)
    {
        $category           = Category::findOrfail($id);
        $category->c_status = !$category->c_status;
        $category->updated_at = Carbon::now();
        $category->save();

        if ($request->ajax()) {
            $categorys     = Category::orderBy('id', 'DESC')->paginate(20);
            $query  = $request->query();
            $html = view('admin.category.data',compact('categorys','query'))->render();
            return response([
                'data'      => $html ?? null,
                'messages'  => 'Update status thành công !'
            ]);
        }
        return redirect()->back();
    }

    // public function ajax_search_table(Request $request){
    //     if($request->ajax()){
    //         $a = $request->search;
    //         if($a == null || $a == '' ){
    //             $categorys = Category::query()->orderBy('id', 'DESC')->paginate(2);
    //             $query  = $request->query();
    //             $html = view('admin.category.data',compact('categorys','query'))->render();
    //             return response([
    //                 'data'      => $html ?? null,
    //                 'messages'  => 'Update status thành công !'
    //             ]);
    //         }
    //         $categorys = Category::query()->where('c_name','like','%'.$a.'%')->orderBy('id', 'DESC')->paginate(2);
    //         $query  = $request->query();
    //         $html = view('admin.category.data',compact('categorys','query'))->render();
    //         return response([
    //             'data'      => $html ?? null,
    //             'messages'  => 'Update status thành công !'
    //         ]);
    //     }
    // }
}
