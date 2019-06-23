
@extends('layouts.app')
@section('content')

    <link href="{{asset('assets/css/demo1/datatables.bundle.css')}}" rel="stylesheet" type="text/css" />

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

            <div class="kt-portlet kt-portlet--mobile">
                <div class="kt-portlet__head kt-portlet__head--lg">
                    <div class="kt-portlet__head-label">
			<span class="kt-portlet__head-icon">
				<i class="kt-font-brand flaticon2-user"></i>
			</span>
                        <h3 class="kt-portlet__head-title">
                            Store keepers list
                        </h3>
                    </div>
                    <div class="kt-portlet__head-toolbar">
                        <div class="kt-portlet__head-wrapper">
                            <div class="kt-portlet__head-actions">
                                <a href="{{asset('users/addEngineer')}}" class="btn btn-brand btn-elevate btn-icon-sm">
                                    <i class="la la-plus"></i>
                                    New Record
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="kt-portlet__body">
                    <!--begin: Datatable -->
                    <table class="table table-striped- table-bordered table-hover table-checkable" id="kt_table_1">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Phone No</th>
                            <th>Address</th>
                            <th>Actions</th>
                        </tr>
                        </thead>

                        <tbody>
                        @foreach($data as $k => $val)
                            <tr>
                                <td class="main_td">{{$val->id}}</td>
                                <td class="main_td">{{$val->name}}</td>
                                <td class="main_td">{{$val->email }}</td>
                                <td class="main_td">{{$val->phone_no }}</td>
                                <td class="main_td">{{$val->address }}</td>

                                <td class="text-center">
                                    <a href="{{asset('users/addStoreKeeper/'.$val->id)}}" class="btn btn-sm btn-clean btn-icon btn-icon-md" title="edit user">
                                        <i class="la la-edit "></i>
                                    </a>
                                    <a  href="#" onclick="deleteUser({{$val->id}})" class="btn btn-sm btn-clean btn-icon btn-icon-md" title="delete user">
                                        <i class="la la-trash "></i>
                                    </a>
                                </td>
                            </tr>
                        @endforeach

                        </tbody>

                    </table>
                    <!--end: Datatable -->
                </div>
            </div></div>
    </div>



@endsection
@section('footer')

    <script src="{{asset('assets/js/datatables/datatables.bundle.js')}}" type="text/javascript"></script>
    {{--<script src="{{asset('assets/js/datatables/scrollable.js')}}" type="text/javascript"></script>--}}

    <script src="{{asset('js/users/main.js')}}"></script>
@endsection

