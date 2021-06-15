<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserTransactionController extends Controller
{
    public function index(Request $request)
    {
        $transactions = Transaction::whereRaw(1)->where('tst_user_id', Auth::id());
        if ($id = $request->id) {
            $transactions->where('id', $id);
        }
        if ($email = $request->email) {
            $transactions->where('tst_email', 'like', '%' . $email . '%');
        }
        if ($type = $request->type) {
            if ($type == 1) {
                $transactions->where('tst_user_id', '<>', 0);
            }
            if ($type == 2) {
                $transactions->where('tst_user_id', 0);
            }
        }
        if ($status = $request->status) {
            $transactions->where('tst_status', $status);
        }
        $transactions = $transactions->orderByDesc('id')->paginate(10);
        // if ($request->export) {
        //     return Excel::download(new TransactionExport($transactions),'don-hang.xlsx');
        // }
        $viewData = [
            'transactions'  =>  $transactions,
            'query'         =>  $request->query()
        ];
        return view('frontend.user.transaction', $viewData);
    }
}
