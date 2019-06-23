
@extends('layouts.app')

@section('content')

    <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor">


        <div class="kt-subheader   kt-grid__item" id="kt_subheader">
            <div class="kt-subheader__main">

                <h3 class="kt-subheader__title">Users</h3>

                <span class="kt-subheader__separator kt-hidden"></span>
                <div class="kt-subheader__breadcrumbs">
                    <a href="#" class="kt-subheader__breadcrumbs-home"><i class="flaticon2-shelter"></i></a>
                    <span class="kt-subheader__breadcrumbs-separator"></span>
                    <a href="#" class="kt-subheader__breadcrumbs-link">Store keepers</a>
                    <span class="kt-subheader__breadcrumbs-separator "></span>


                    <span class="kt-subheader__breadcrumbs-link kt-subheader__breadcrumbs-link--active">store keepers list</span>
                </div>

            </div>

        </div>

        <div class="kt-content  kt-grid__item kt-grid__item--fluid" id="kt_content">

            <!--begin::Portlet-->
            <div class="kt-portlet">
                <div class="kt-portlet__head">
                    <div class="kt-portlet__head-label">
                        <h3 class="kt-portlet__head-title">
                            <p>{{isset($data)? 'Edit Store Keeper' : 'Add Store Keeper'}}</p>
                        </h3>
                    </div>
                </div>
                <form class="kt-form kt-form--label-right"  action="{{asset('users/saveStoreKeeper')}}" method="post">
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

