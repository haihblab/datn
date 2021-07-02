<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminHomeController extends Controller
{
    public function index()
    {
        return view('admin.index');
    }

    public function readNotify(Request $request, $id)
    {
        if ($request->ajax()) {
            $notify = DB::table('notifications')->where('id', $id)->update(['read_at' => Carbon::now()]);
            return response([
                'messages' => 'Read notify !'
            ]);
        }
    }
}
