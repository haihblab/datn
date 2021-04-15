<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TypeProduct extends Model
{
    use HasFactory;
    protected $guarded=[''];

    public function category(){
        return $this->belongsTo(Category::class,'tp_category_id');
    }

    public function product(){
        return $this->hasMany(Product::class,'pro_type_product_id');
    }
}
