<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\AdminProductRequest;
use App\Models\Attribute;
use App\Models\Category;
use App\Models\Product;
use App\Models\TypeProduct;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Carbon\Carbon;

class AdminProductController extends Controller
{
    public function index(Request $request)
    {
        $products = Product::with('category:id,c_name');
        $categorys = Category::all();

        if ($id = $request->id) {
            $products->where('id', $id);
        }
        if ($name = $request->name) {
            $products->where('pro_slug', 'like', '%' . $name . '%');
        }
        if ($idCategory = $request->category) {
            $categorySearch = Category::where('c_parent_id', $parentId = Category::where('id', $idCategory)
                ->value('id'))->pluck('id')->push($parentId)->all();
            $products = Product::whereIn('pro_category_id', $categorySearch);
        }
        if ($hot = $request->hot) {
            if ($hot == 1) {
                $products->where('pro_hot', $hot);
            } else {
                $products->where('pro_hot', 0);
            }
        }
        if ($active = $request->status) {
            if ($active == 1) {
                $products->where('pro_active', $active);
            } else {
                $products->where('pro_active', 0);
            }
        }
        if ($sort = $request->sort) {
            switch ($sort) {
                case 1:
                    $products->orderBy('id', 'ASC');
                    break;
                case 2:
                    $products->orderBy('id', 'DESC');
                    break;
                case 3:
                    $products->orderBy('pro_price', 'DESC');
                    break;
                case 4:
                    $products->orderBy('pro_price', 'ASC');
                    break;
            }
        } else {
            $products->orderByDesc('id');
        }

        $products = $products->paginate(20);
        $viewData = [
            'products'      => $products,
            'categorys'     => $categorys,
            'query'         => $request->query()
        ];
        return view('admin.product.index', $viewData);
    }

    public function create()
    {
        $categorys = Category::select('id', 'c_name', 'c_parent_id')->get();
        $typeproducts = TypeProduct::select('id', 'tp_name', 'tp_category_id')->get();
        // $attributes = Attribute::select('id','atb_name')->get();
        $attributes = $this->syncAttributeGroup();
        $viewData = [
            'categorys'          => $categorys,
            'attributes'        => $attributes,
            'typeproducts'       => $typeproducts
        ];
        return view('admin.product.create', $viewData);
    }

    public function store(AdminProductRequest $request)
    {
        $data = $request->except('_token', 'pro_avatar', 'attribute', 'file');
        $data['pro_slug']   =   Str::slug($request->pro_name);
        if (!$request->pro_sale) {
            $data['pro_sale'] = 0;
        }

        if ($request->pro_avatar) {
            $image = upload_image('pro_avatar');
            if ($image['code'] == 1) {
                $data['pro_avatar'] = $image['name'];
            }
        }
        $product = Product::create($data);
        if ($product) {
            $product->attributes()->sync($request->attribute);
            if ($request->file) {
                $this->syncAlbumImageAndProduct($request->file, $product->id);
            }
        }
        $request->session()->flash('toastr', [
            'type'      => 'success',
            'message'   => 'Insert thành công !'
        ]);

        return redirect()->back();
    }

    public function edit($id)
    {
        $product = Product::with('images')->findOrfail($id);
        $categorys = Category::select('id', 'c_name', 'c_parent_id')->get();
        $typeproducts = TypeProduct::select('id', 'tp_name', 'tp_category_id')->get();
        // $attributes = Attribute::select('id','atb_name')->get();
        $attributes = $this->syncAttributeGroup();

        $attributeOld = DB::table('attribute_product')
            ->where('ap_product_id', $id)
            ->pluck('ap_attribute_id')
            ->toArray();
        if (!$attributeOld) $attributeOld = [];
        $viewData = [
            'categorys'         => $categorys,
            'attributes'        => $attributes,
            'typeproducts'      => $typeproducts,
            'product'           => $product,
            'attributeOld'      => $attributeOld
        ];
        return view('admin.product.update', $viewData);
    }
    public function update(AdminProductRequest $request, $id)
    {
        $product = Product::findOrfail($id);
        $data = $request->except('_token', 'pro_avatar', 'attribute', 'file');

        $data['pro_slug']   =   Str::slug($request->pro_name);
        if ($request->pro_avatar) {
            $image = upload_image('pro_avatar');
            if ($image['code'] == 1) {
                $data['pro_avatar'] = $image['name'];
            }
        }

        $product->update($data);
        $product->attributes()->sync($request->attribute);
        if ($request->file) $this->syncAlbumImageAndProduct($request->file, $id);
        $request->session()->flash('toastr', [
            'type'      => 'success',
            'message'   => 'Update thành công !'
        ]);
        return redirect()->back();
    }

    public function delete(Request $request, $id)
    {
        $product = Product::with('images', 'attributes')->findOrfail($id);
        if ($product) {
            foreach ($product->images as $item) {
                $this->deleteImage($request, $item->id);
            }
            foreach ($product->attributes as $item) {
                $product->attributes()->detach($item->id);
            }
            // $attributeOld=DB::table('attribute_product')
            //     ->where('ap_product_id',$id)
            //     ->pluck('id')
            //     ->toArray();
            $product->delete();
        }

        $request->session()->flash('toastr', [
            'type'      => 'success',
            'message'   => 'Delete thành công !'
        ]);
        return redirect()->back();
    }

    public function hot(Request $request, $id)
    {
        $product                = Product::findOrfail($id);
        $product->pro_hot       = !$product->pro_hot;
        $product->updated_at    = Carbon::now();
        $product->save();

        if ($request->ajax()) {
            $products     = Product::orderBy('id', 'DESC')->paginate(20);
            $query  = $request->query();
            $html = view('admin.product.data', compact('products', 'query'))->render();
            return response([
                'data'      => $html ?? null,
                'messages'  => 'Update hot thành công !'
            ]);
        }
        return redirect()->back();
    }

    public function active(Request $request, $id)
    {
        $product                    = Product::findOrfail($id);
        $product->pro_active        = !$product->pro_active;
        $product->updated_at        = Carbon::now();
        $product->save();

        if ($request->ajax()) {
            $products     = Product::orderBy('id', 'DESC')->paginate(20);
            $query  = $request->query();
            $html = view('admin.product.data', compact('products', 'query'))->render();
            return response([
                'data'      => $html ?? null,
                'messages'  => 'Update status thành công !'
            ]);
        }
        return redirect()->back();
    }

    public function syncAlbumImageAndProduct($file, $productID)
    {
        foreach ($file as $key => $fileImage) {
            $ext = $fileImage->getClientOriginalExtension();
            $extend = [
                'png', 'jpg', 'jpeg', 'PNG', 'JPG'
            ];
            if (!in_array($ext, $extend)) {
                return false;
            }

            $filename = date('Y-m-d__') . Str::slug($fileImage->getClientOriginalName()) . '.' . $ext;

            $path = public_path() . '/uploads/' . date('Y/m/d');
            if (!\File::exists($path)) {
                mkdir($path, 0777, true);
            }
            $fileImage->move($path, $filename);
            DB::table('images')
                ->insert([
                    'img_name'       => $fileImage->getClientOriginalName(),
                    'img_slug'       => $filename,
                    'img_product_id' => $productID,
                    'created_at'    => Carbon::now()
                ]);
        }
    }
    public function deleteImage(Request $request, $imageID)
    {
        DB::table('images')->where('id', $imageID)->delete();
        $request->session()->flash('toastr', [
            'type'      => 'success',
            'message'   => 'Delete thành công !'
        ]);
        return redirect()->back();
    }

    public function syncAttributeGroup()
    {
        $attributes = Attribute::get();
        $groupAttribute = [];
        foreach ($attributes as $key => $attribute) {
            $aaa = $attribute->gettype($attribute->atb_type)['name'];
            $groupAttribute[$aaa][] = $attribute->toArray();
        }
        return $groupAttribute;
    }

    public function getTypeProduct(Request $request, $categoryId)
    {
        $category = Category::find($categoryId);
        if ($category->c_parent_id) {
            $categoryId = $category->c_parent_id;
        }
        $typeproducts = TypeProduct::where('tp_category_id', $categoryId)->get();
        $html = view('admin.product.data_type_product', compact('typeproducts'))->render();
        return response([
            'data' => $html ?? null,
        ]);
    }
}