<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Requests\FrontendRegisterRequest;
use App\Notifications\VerifyEmail;

class RegisterController extends Controller
{
    public function getFormRegister()
    {
        return view('frontend.auth.register');
    }

    public function postRegister(FrontendRegisterRequest $request)
    {
        $user = User::query()->create([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'password' => bcrypt($request->input('password')),
            'role' => 'user',
            'phone' => $request->input('phone'),
        ]);
        $user->notify(new VerifyEmail());
        $request->session()->flash('toastr', [
            'type'      => 'success',
            'message'   => 'Success ! vào email để Verify !'
        ]);

        return redirect('/login');
    }

    public function verifyEmail($id)
    {
        $user = User::findOrfail($id);
        $user->markEmailAsVerified();

        return redirect('/login');
    }
}
