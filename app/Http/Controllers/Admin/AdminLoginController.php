<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminLoginController extends Controller
{
    public function index()
    {
        return view('admin.auth.login');
    }

    public function postLoginAdmin(Request $request): \Illuminate\Http\RedirectResponse
    {
        $data = $request->only('email', 'password');
        if (Auth::guard('admin')->attempt($data)) {
            $request->session()->regenerate();
            return redirect()->intended('/admin-datn');
        }
        return redirect()->back();
    }

    public function getLogoutAdmin()
    {
        Auth::guard('admin')->logout();
        return redirect('/admin-auth/login');
    }
}
