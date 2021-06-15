<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequestUpdateInfo;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserInfoController extends Controller
{
    public function updateInfo()
    {
        return view('frontend.user.update_info');
    }

    public function saveUpdateInfo(UserRequestUpdateInfo $request)
    {
        $data               = $request->except('_token');
        $user               = User::find(Auth::id());
        $user->update($data);
        $user->created_at   =  Carbon::now('Asia/Ho_Chi_Minh');
        return redirect()->back();
    }
}
