<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\AdminRequestMenu;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Carbon\Carbon;
use App\Models\Menu;

class AdminMenuController extends Controller
{
    public function index()
    {
        $menus = Menu::all();
        $viewData = [
            'menus' => $menus
        ];
        return view('admin.menu.index', $viewData);
    }
    public function create()
    {
        return view('admin.menu.created');
    }
    public function store(AdminRequestMenu $request)
    {
        $data = $request->except('_token');
        $data['mn_slug']         = Str::slug($request->mn_name);
        $data['created_at']     = Carbon::now('Asia/Ho_Chi_Minh');
        $id = Menu::insertGetId($data);
        $request->session()->flash('toastr', [
            'type'      => 'success',
            'message'   => 'Insert thành công !'
        ]);
        return redirect()->back();
    }
    public function edit($id)
    {
        $menu = Menu::find($id);
        return view('admin.menu.update', compact('menu'));
    }

    public function update(AdminRequestMenu $request, $id)
    {
        $menu = Menu::find($id);
        $data = $request->except('_token');
        $data['mn_slug'] = Str::slug($request->mn_name);
        $data['updated_at']     = Carbon::now('Asia/Ho_Chi_Minh');
        $menu->update($data);
        $request->session()->flash('toastr', [
            'type'      => 'success',
            'message'   => 'update thành công !'
        ]);
        return redirect()->back();
    }
    public function delete($id)
    {
        $menu = Menu::find($id);
        if ($menu) $menu->delete();
        return redirect()->back();
    }
    public function active($id)
    {
        $menu   = Menu::find($id);
        $menu->mn_status = !$menu->mn_status;
        $menu->updated_at = Carbon::now('Asia/Ho_Chi_Minh');
        $menu->save();
        return redirect()->back();
    }
    public function hot($id)
    {
        $menu = Menu::find($id);
        $menu->mn_hot = !$menu->mn_hot;
        $menu->updated_at = Carbon::now('Asia/Ho_Chi_Minh');
        $menu->save();
        return redirect()->back();
    }
}
