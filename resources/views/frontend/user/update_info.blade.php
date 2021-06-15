@extends('layout.master_user');
    <style>

    </style>
@section('content')
    <section class="py-4 py-lg-5" style="background: white;padding: 20px">
        <h2>Cập nhật thông tin</h2>
        <div class="row mb-5">
            <div class="col-sm-12">
                <form action="" method="POST">
                    @csrf
                    <div class="form-group">
                        <label for="">Name </label>
                        <input type="text" name="name"  class="form-control" value="{{ Auth::user()->name }}"  placeholder="Enter name">
                    </div>
                    <div class="form-group">
                        <label for="">Email </label>
                        <input type="email" name="email" class="form-control" value="{{ Auth::user()->email }}"  placeholder="Enter email">
                        {{--  <small id="emailHelp" class="form-text text-muted">Well never share your email with anyone else.</small>  --}}
                    </div>
                    <div class="form-group">
                        <label for="">Phone </label>
                        <input type="text" name="phone" class="form-control" value="{{ Auth::user()->phone }}"  placeholder="Enter Phone">
                    </div>
                    <div class="form-group">
                        <label for="">Address </label>
                        <input type="text" name="address" class="form-control" value="{{ Auth::user()->address }}"  placeholder="Enter Address">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </section>
@endsection
