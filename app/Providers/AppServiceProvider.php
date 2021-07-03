<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\Category;
use App\Models\TypeProduct;
use Illuminate\Support\Facades\View;
use Illuminate\Pagination\Paginator;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Paginator::useBootstrap();
        // $categories = Category::with('children.products')->where('c_parent_id', 0)->get();
        $categories = Category::with(['children' => function ($q) {
            return $q->where('c_status', (int)config('contants.STATUS.active'))->orderByDesc('c_hot');
        }])->where('c_parent_id', 0)->get();
        // dd($categories);
        $product_typess = TypeProduct::with('product')->limit(3)->get();
        $cateImages = Category::where([['c_status', '=', 1], ['c_parent_id', '>', 0]])->limit(5)->get();
        View::share(['categories' => $categories, 'product_typess' => $product_typess, 'cateImages' => $cateImages]);
    }
}
