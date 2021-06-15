<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckRoleMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next, $role)
    {
        if (Auth::user()->role == $role) {
            return $next($request);
        }
        // return redirect('/')->with('message','User không thể vào Xem Các User !');
        Auth::logout();
        // return redirect('/');
        abort(404);
    }
}
