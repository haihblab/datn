<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function getFormLogin()
    {
        return view('frontend.auth.login');
    }

    public function postLogin(Request $request)
    {
        $data = $request->only('email', 'password');
        if (Auth::attempt($data)) {
            $request->session()->regenerate();
            return redirect('/');
        }
        return redirect()->back();
    }

    public function getLogout(Request $request)
    {
        Auth::logout();
        return redirect('/login');
    }
}
