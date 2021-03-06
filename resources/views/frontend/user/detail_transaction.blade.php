@extends('layout.master_user');
    <style>

    </style>
@section('content')
    <section class="py-4 py-lg-5" style="background: white;padding: 20px">
        <h2>Trang chi tiết đơn hàng</h2>
        <div class="row mb-5">
            <div class="col-sm-12">
                <form role="form" action="" method="POST" enctype="multipart/form-data">
            @csrf
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header">
                            <h3 class="box-title">Thông Tin Khách Hàng</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body no-padding">
                            <table class="table table-striped">
                                <tbody>
                                    <tr>
                                        <th style="width: 30%">Thuộc Tính</th>
                                        <th>Giá Trị</th>
                                    </tr>
                                    <tr>
                                        <td>Tên KH</td>
                                        <td><span >{{ $transaction->tst_name }}</span></td>
                                    </tr>
                                    <tr>
                                        <td>Email KH</td>
                                        <td><span >{{ $transaction->tst_email }}</span></td>
                                    </tr>
                                    <tr>
                                        <td>Phone KH</td>
                                        <td><span >{{ $transaction->tst_phone }}</span></td>
                                    </tr>
                                    <tr>
                                        <td>Địa Chỉ KH</td>
                                        <td><span >{{ $transaction->tst_address }}</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="box box-danger">
                        <div class="box-header">
                            <h3 class="box-title">Thông Tin Thêm Về Đơn Hàng</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body no-padding">
                            <table class="table table-striped">
                                <tbody>
                                    <tr>
                                        <th style="width: 30%">Thuộc Tính</th>
                                        <th>Giá Trị</th>
                                    </tr>
                                    <tr>
                                        <td>Trạng Thái</td>
                                        <td><span class="badge bg-light-blue" style="
                                            color: #1ade29;
                                        ">{{ $transaction->getStatus($transaction->tst_status)['name'] }}</span></td>
                                    </tr>
                                    <tr>
                                        <td>Tông Tiền Đơn Hàng</td>
                                        <td><span style="
                                            color: #de351a;
                                        " class="badge bg-red">{{ number_format($transaction->tst_total_money,0,',','.') }}</span></td>
                                    </tr>
                                    <tr>
                                        <td>Ngày Mua Đơn Hàng</td>
                                        <td><span >{{ $transaction->created_at }}</span></td>
                                    </tr>
                                    <tr>
                                        <td>Chức Vụ</td>
                                        <td>
                                            @if ($transaction->tst_user_id)
                                                <span class="label label-warning">Thành Viên</span>
                                            @else
                                                <span class="label label-default">Khách</span>
                                            @endif
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="box box-danger">
                        <div class="box-header">
                            <h3 class="box-title">Chi Tiết Về Đơn Hàng</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body no-padding">
                            <table class="table table-condensed">
                                <tbody>
                                    <tr>
                                        <th style="width: 75px;">STT -- ID</th>
                                        <th>Name</th>
                                        <th>Avatar</th>
                                        <th>Price</th>
                                        <th>Qty</th>
                                        <th>Total</th>
                                        {{-- <th >Action</th> --}}
                                    </tr>
                                    @php
                                        $i=0;
                                    @endphp
                                    @foreach ($orders as $item)
                                        <tr>
                                            <td>{{ ++$i .'--'. $item->id }}</td>
                                            <td>
                                                <a href="{{ route('get.product.detail',$item->product->pro_slug.'-'.$item->product->id) }}">{{ $item->product->pro_name ?? "[N\A]" }}</a>
                                            </td>
                                            <td>
                                                <img style="height: 80px;" src="{{ pare_url_file($item->product->pro_avatar) }}" alt="">
                                            </td>
                                            <td>{{ number_format($item->od_price,0,',','.') }} đ</td>
                                            <td>{{ $item->od_qty }}</td>
                                            <td>{{ number_format($item->od_price * $item->od_qty,0,',','.') }} đ</td>
                                            {{-- <td>
                                                <a href="{{ route('admin.order_detail.delete',$item->id) }}" class="btn btn-xs btn-danger js-delete-order-item">Delete</a>
                                            </td> --}}
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="box-footer" style="text-align: center;">
                        {{-- <a href="{{ route('admin.transaction.index') }}" class="btn btn-danger"><i class="fa fa-undo"></i> Trở Lại</a> --}}
                        {{-- <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Submit</button> --}}
                    </div>
                </div>
        </form>
            </div>
        </div>
    </section>
@endsection
