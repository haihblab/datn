@php
if($product->pro_review_total == 0){
    $age = 0;
}else{
    $age = $product->pro_review_star / $product->pro_review_total;
    $age = number_format($age,1,'.',',');
}
@endphp
<div class="lcrt " data-gpa="{{ $age }}">
<b>{{ $age }} <i class="fa fa-star star-active"></i></b>
</div>
<div class="rcrt">
@foreach ($ratingDefault as $key => $item)
<div class="r">
    <span class="t">{{ $key }} <i class="fa fa-star star-active"></i></span>
    <div class="bgb">
        <div class="bgb-in" style="width: {{ $product->pro_review_total==0 ? 0 : $item['count_number'] *100 / $product->pro_review_total  }}%"></div>
    </div>
    <span class="c s-filter"  data-buy="{{ $item['count_number'] }}">
        <a href="{{ request()->fullUrlWithQuery(['s'=>$key]) }}">
            <strong>{{ $item['count_number'] }}</strong> đánh giá
        </a>
    </span>
</div>
@endforeach
</div>