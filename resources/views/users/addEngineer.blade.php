
@extends('layouts.app')
@section('content')
    @include('helpers')

    {{--@php--}}
        {{--echo "<pre>";--}}
        {{--print_r($data);die();--}}
    {{--@endphp--}}
    {{--<div class="breadcomb-area">--}}
        {{--<div class="container">--}}
            {{--<div class="row">--}}
                {{--<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">--}}
                    {{--<div class="breadcomb-list">--}}
                        {{--<div class="row">--}}
                            {{--<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">--}}
                                {{--<div class="breadcomb-wp">--}}
                                    {{--<div class="breadcomb-icon">--}}
                                        {{--<i class="notika-icon notika-form"></i>--}}
                                    {{--</div>--}}
                                    {{--<div class="breadcomb-ctn">--}}
                                        {{--<h2>Engineers</h2>--}}
                                        {{--<p>{{isset($data)? 'Edit Engineer' : 'Add New Engineer'}}</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                            {{--</div>--}}
                            {{--@if(count($errors) > 0)--}}
                            {{--<div class=" col-lg-offset-2 col-lg-4 col-md-6 col-sm-6 col-xs-12">--}}
                                {{--<div class="breadcomb-wp">--}}
                                   {{--<div class="alert alert-danger">--}}
                                       {{--<ul>--}}
                                       {{--@foreach($errors->all() as $error)--}}
                                           {{--<li>{{$error}}</li>--}}
                                       {{--@endforeach--}}
                                       {{--</ul>--}}
                                   {{--</div>--}}
                                {{--</div>--}}
                            {{--</div>--}}
                            {{--@endif--}}
                        {{--</div>--}}
                    {{--</div>--}}
                    {{--<div class="row">--}}
                        {{--<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">--}}
                            {{--<div class="form-example-wrap mg-t-30">--}}
                                {{--<div class="cmp-tb-hd cmp-int-hd">--}}
                                    {{--<h2>{{isset($data)? 'Edit Engineer' : 'Add Engineer'}}</h2>--}}
                                {{--</div>--}}
                                {{--@if(isset($data))--}}
                                    {{--<div class="form-example-int mg-t-15">--}}
                                        {{--<div class="form-group">--}}
                                            {{--<div class="row">--}}
                                                {{--<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">--}}
                                                {{--</div>--}}
                                                {{--<div class="col-lg-8 col-lg-offset-8 col-md-7 col-md-offset-8 col-sm-7 col-xs-12 ">--}}
                                                    {{--<button onclick="resetPassword({{$data->id}})" class="btn btn-danger notika-btn-danger col-md-2" style="margin-left: 40px; " >Reset Password</button>--}}
                                                {{--</div>--}}
                                            {{--</div>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                {{--@endif--}}
                                {{--<form action="{{asset('users/saveEngineer')}}" method="post">--}}
                                    {{--{{csrf_field()}}--}}
                                    {{--<div class="form-example-int form-horizental">--}}
                                        {{--<div class="form-group">--}}
                                            {{--<div class="row">--}}
                                                {{--<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">--}}
                                                    {{--<label class="hrzn-fm ">Eng. Name</label>--}}
                                                {{--</div>--}}
                                                {{--<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">--}}
                                                    {{--<div class="nk-int-st">--}}
                                                        {{--<input type="text" name="name" class="form-control input-md" placeholder="Enter Name" required value="{{isset($data->name)?  $data->name:  old('name') }}" >--}}
                                                    {{--</div>--}}
                                                {{--</div>--}}
                                            {{--</div>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}

                                    {{--<div class="form-example-int form-horizental">--}}
                                        {{--<div class="form-group">--}}
                                            {{--<div class="row">--}}
                                                {{--<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">--}}
                                                    {{--<label class="hrzn-fm ">Email</label>--}}
                                                {{--</div>--}}
                                                {{--<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">--}}
                                                    {{--<div class="nk-int-st">--}}
                                                        {{--<input type="text" name="email" class="form-control input-md" placeholder="Enter Email" required value="{{isset($data->email)?  $data->email: old('email') }}" >--}}
                                                    {{--</div>--}}
                                                {{--</div>--}}
                                            {{--</div>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}

                                    {{--<div class="form-example-int form-horizental">--}}
                                        {{--<div class="form-group">--}}
                                            {{--<div class="row">--}}
                                                {{--<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">--}}
                                                    {{--<label class="hrzn-fm ">phone No</label>--}}
                                                {{--</div>--}}
                                                {{--<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">--}}
                                                    {{--<div class="nk-int-st">--}}
                                                        {{--<input type="number" name="phone_no" class="form-control input-md" placeholder="000 00000" required value="{{isset($data->phone_no) ? $data->phone_no : old('phone_no')}}">--}}
                                                    {{--</div>--}}
                                                {{--</div>--}}
                                            {{--</div>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}

                                    {{--<div class="form-example-int form-horizental">--}}
                                        {{--<div class="form-group">--}}
                                            {{--<div class="row">--}}
                                                {{--<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">--}}
                                                    {{--<label class="hrzn-fm ">Address</label>--}}
                                                {{--</div>--}}
                                                {{--<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">--}}
                                                    {{--<div class="nk-int-st">--}}
                                                        {{--<input type="text" name="address" class="form-control input-md" placeholder="Engineer Address" required value="{{isset($data->address) ? $data->address : old('address')}}">--}}
                                                    {{--</div>--}}
                                                {{--</div>--}}
                                            {{--</div>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--@if(!isset($data))--}}
                                        {{--<div class="form-example-int form-horizental">--}}
                                            {{--<div class="form-group">--}}
                                                {{--<div class="row">--}}
                                                    {{--<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">--}}
                                                        {{--<label class="hrzn-fm ">Password</label>--}}
                                                    {{--</div>--}}
                                                    {{--<div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">--}}
                                                        {{--<div class="nk-int-st">--}}
                                                            {{--<input type="text"class="form-control input-md" value="User123!" style="font-weight: bold;" disabled>--}}
                                                        {{--</div>--}}
                                                    {{--</div>--}}
                                                {{--</div>--}}
                                            {{--</div>--}}
                                        {{--</div>--}}
                                    {{--@endif--}}
                                    {{--@if(isset($data))--}}
                                        {{--<input type="hidden" value="{{$data->id}}" name="user_id">--}}
                                    {{--@endif--}}
                                    {{--<br>--}}
                                    {{--<div class="form-example-int mg-t-15">--}}
                                        {{--<div class="form-group">--}}
                                            {{--<div class="row">--}}
                                                {{--<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">--}}
                                                {{--</div>--}}
                                                {{--<div class="col-lg-8 col-lg-offset-8 col-md-7 col-md-offset-8 col-sm-7 col-xs-12 ">--}}
                                                    {{--<button type="submit" class="btn btn-{{isset($data) ? 'warning': 'success'}} notika-btn-{{isset($data) ? 'warning': 'success'}} col-md-2" style="margin-left: 40px; padding: 10px;" >{{isset($data) ? 'Update User': 'Add User'}}</button>--}}
                                                {{--</div>--}}
                                            {{--</div>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                {{--</form>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
        {{--</div>--}}
    {{--</div>--}}

    <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor">


        <div class="kt-subheader   kt-grid__item" id="kt_subheader">
            <div class="kt-subheader__main">

                <h3 class="kt-subheader__title">Users</h3>

                <span class="kt-subheader__separator kt-hidden"></span>
                <div class="kt-subheader__breadcrumbs">
                    <a href="#" class="kt-subheader__breadcrumbs-home"><i class="flaticon2-shelter"></i></a>
                    <span class="kt-subheader__breadcrumbs-separator"></span>
                    <a href="#" class="kt-subheader__breadcrumbs-link">Engineers</a>
                    <span class="kt-subheader__breadcrumbs-separator "></span>


                    <span class="kt-subheader__breadcrumbs-link kt-subheader__breadcrumbs-link--active">Engineers List</span>
                </div>

            </div>

        </div>

        <div class="kt-content  kt-grid__item kt-grid__item--fluid" id="kt_content">

            <!--begin::Portlet-->
            <div class="kt-portlet">
                <div class="kt-portlet__head">
                    <div class="kt-portlet__head-label">
                        <h3 class="kt-portlet__head-title">
                            <p>{{isset($data)? 'Edit Engineer' : 'Add Engineer'}}</p>
                        </h3>
                    </div>
                </div>

                <form class="kt-form kt-form--label-right"  action="{{asset('users/saveEngineer')}}" method="post">
                    {{csrf_field()}}
                    <div class="kt-portlet__body">
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">Name</label>
                            <div class="col-lg-4 col-md-9 col-sm-12">
                                <input type="text" name="name" class="form-control input-md" placeholder="Enter Name" required value="{{isset($data->name)?  $data->name:  old('name') }}" >
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">Email</label>
                            <div class="col-lg-4 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="email" name="email" class="form-control input-md" placeholder="Enter Email" required value="{{isset($data->email)?  $data->email: old('email') }}" >
                                    <div class="input-group-append">
							<span class="input-group-text">
								<i class="la la-flaticon-email">@</i>
							</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">Phone No</label>
                            <div class="col-lg-4 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="number" name="phone_no" class="form-control input-md" placeholder="000 00000" required value="{{isset($data->phone_no) ? $data->phone_no : old('phone_no')}}">
                                    <div class="input-group-append">
							<span class="input-group-text">
								<i class="la la-phone"></i>
							</span>
                                    </div>
                                </div>
                                <span class="form-text text-muted">phone number should be atleast 8 digits</span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">Address</label>
                            <div class="col-lg-4 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="text" name="address" class="form-control input-md" placeholder="Engineer Address" required value="{{isset($data->address) ? $data->address : old('address')}}">
                                    <div class="input-group-append">
                                        <span class="input-group-text">
                                            <i class="la la-bullhorn"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        @if(!isset($data))
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">Password</label>
                            <div class="col-lg-4 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="text"class="form-control input-md" value="User123!" style="font-weight: bold;" disabled>
                                    <div class="input-group-append">
                                        <span class="input-group-text">
                                            <i class="la la-lock"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endif
                    </div>
                    @if(isset($data))
                        <input type="hidden" value="{{$data->id}}" name="user_id">
                    @endif
                    <div class="kt-portlet__foot">
                        <div class="kt-form__actions">
                            <div class="row">
                                <div class="col-lg-9 ml-lg-auto">
                                    <button type="submit" class="btn btn-{{isset($data) ? 'warning': 'info'}}" >
                                        {{isset($data) ? 'update': 'submit'}}
                                    </button>
                                    <button type="reset" class="btn btn-secondary">Cancel</button>
                                </div>

                            </div>
                        </div>

                        @if(isset($data))
                            <button type="button" onclick="resetPassword({{$data->id}})" class="btn btn-outline-danger">reset password</button>
                        @endif
                    </div>
                </form>

            </div>
            </div>
        </div>
    </div>
</div>



@endsection
@section('footer')
    <script src="{{asset('js/users/main.js')}}"></script>
    {{--<script src="{{asset('assets/js/datatables/scrollable.js')}}" type="text/javascript"></script>--}}

    {{--<script src="{{asset('js/categories/main.js')}}"></script>--}}
@endsection

