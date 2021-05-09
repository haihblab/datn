<?php

use App\Http\Controllers\Admin\AdminAttributeController;
use App\Http\Controllers\Admin\AdminCategoryController;
use App\Http\Controllers\Admin\AdminHomeController;
use App\Http\Controllers\Admin\AdminProductController;
use App\Http\Controllers\Admin\AdminSlideController;
use App\Http\Controllers\Admin\AdminTypeProductController;
use Illuminate\Support\Facades\Route;


Route::group(['prefix' => 'admin-datn'], function() {
    Route::get('/',[AdminHomeController::class,'index'])->name('admin.index');

    Route::group(['prefix' => 'category'], function() {
        Route::get('/',[AdminCategoryController::class,'index'])->name('admin.category.index');
        Route::get('create',[AdminCategoryController::class,'create'])->name('admin.category.create');
        Route::post('create',[AdminCategoryController::class,'store'])->name('admin.category.store');

        Route::get('update/{id}',[AdminCategoryController::class,'edit'])->name('admin.category.edit');
        Route::post('update/{id}',[AdminCategoryController::class,'update'])->name('admin.category.update');

        Route::get('delete/{id}',[AdminCategoryController::class,'delete'])->name('admin.category.delete');
        Route::get('active/{id}',[AdminCategoryController::class,'active'])->name('admin.category.active');
        Route::get('hot/{id}',[AdminCategoryController::class,'hot'])->name('admin.category.hot');
        // Route::get('ajax-search-table',[AdminCategoryController::class,'ajax_search_table'])->name('ajax.admin.category.search');
    });

    Route::group(['prefix' => 'type-product'], function() {
        Route::get('/',[AdminTypeProductController::class,'index'])->name('admin.typeproduct.index');
        Route::get('create',[AdminTypeProductController::class,'create'])->name('admin.typeproduct.create');
        Route::post('create',[AdminTypeProductController::class,'store'])->name('admin.typeproduct.store');

        Route::get('update/{id}',[AdminTypeProductController::class,'edit'])->name('admin.typeproduct.edit');
        Route::post('update/{id}',[AdminTypeProductController::class,'update'])->name('admin.typeproduct.update');

        Route::get('delete/{id}',[AdminTypeProductController::class,'delete'])->name('admin.typeproduct.delete');
        Route::get('active/{id}',[AdminTypeProductController::class,'active'])->name('admin.typeproduct.active');
        Route::get('hot/{id}',[AdminTypeProductController::class,'hot'])->name('admin.typeproduct.hot');
    });

    Route::group(['prefix' => 'attribute'], function() {
        Route::get('/',[AdminAttributeController::class,'index'])->name('admin.attribute.index');
        Route::get('create',[AdminAttributeController::class,'create'])->name('admin.attribute.create');
        Route::post('create',[AdminAttributeController::class,'store'])->name('admin.attribute.store');

        Route::get('update/{id}',[AdminAttributeController::class,'edit'])->name('admin.attribute.edit');
        Route::post('update/{id}',[AdminAttributeController::class,'update']);

        Route::get('delete/{id}',[AdminAttributeController::class,'delete'])->name('admin.attribute.delete');
    });

    Route::group(['prefix' => 'product'], function() {
        Route::get('/',[AdminProductController::class,'index'])->name('admin.product.index');
        Route::get('create',[AdminProductController::class,'create'])->name('admin.product.create');
        Route::post('create',[AdminProductController::class,'store'])->name('admin.product.store');

        Route::get('update/{id}',[AdminProductController::class,'edit'])->name('admin.product.edit');
        Route::post('update/{id}',[AdminProductController::class,'update'])->name('admin.product.update');

        Route::get('delete/{id}',[AdminProductController::class,'delete'])->name('admin.product.delete');
        Route::get('active/{id}',[AdminProductController::class,'active'])->name('admin.product.active');
        Route::get('hot/{id}',[AdminProductController::class,'hot'])->name('admin.product.hot');

        Route::get('delete-image/{id}',[AdminProductController::class,'deleteImage'])->name('admin.product.delete_image');
    });

    Route::group(['prefix' => 'slide'], function() {
        Route::get('/',[AdminSlideController::class,'index'])->name('admin.slide.index');
        Route::get('create',[AdminSlideController::class,'create'])->name('admin.slide.create');
        Route::post('create',[AdminSlideController::class,'store'])->name('admin.slide.store');

        Route::get('update/{id}',[AdminSlideController::class,'edit'])->name('admin.slide.edit');
        Route::post('update/{id}',[AdminSlideController::class,'update'])->name('admin.slide.update');

        Route::get('delete/{id}',[AdminSlideController::class,'delete'])->name('admin.slide.delete');
        Route::get('active/{id}',[AdminSlideController::class,'active'])->name('admin.slide.active');

        Route::get('delete-image/{id}',[AdminSlideController::class,'deleteImage'])->name('admin.slide.delete_image');
    });
});

