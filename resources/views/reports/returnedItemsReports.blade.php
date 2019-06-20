{{--@php--}}
{{--echo "<pre>";--}}
{{--print_r($data);die();--}}
{{--@endphp--}}
@extends('layouts.app')
@include('includes.header')
@include('includes.menu')
@section('content')
    <div class="breadcomb-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="breadcomb-list">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="breadcomb-wp">
                                    <div class="breadcomb-icon">
                                        <i class="notika-icon notika-form"></i>
                                    </div>
                                    <div class="breadcomb-ctn" style="margin-top:10px;">
                                        <h2>Returned Items Report</h2>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
                                {{--<div class="breadcomb-report">--}}
                                {{--<button onclick="exportProjectMaterialsToExcel()" class="btn btn-success notika-btn-success"><i class="fa fa-download"></i> Export To Excel</button>--}}
                                {{--</div>--}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="data-table-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="data-table-list">
                        <div class="basic-tb-hd">
                            <ul class="nav nav-tabs">
                            <li class="active"><a href="{{asset('reports/returnedItemsReports')}}"><h2>Materials</h2></a></li>
                            <li><a href="{{asset('reports/returnedToolsReports')}}"><h2>Assets/Tools</h2></a></li>
                            </ul>
                        </div>
                        <div class="table-responsive">
                            <div class="col-md-1"></div>
                            <form   method="GET" action="{{asset('reports/returnedItemsReports')}}">
                                {{csrf_field()}}
                                <div class="col-md-6 ">
                                    <select class="form-control projects" name="project_id" id="projects" style="font-weight: bold;">
                                        <option value="">Select Project</option>
                                        @foreach($projects as $k => $val)
                                            <option value="{{$val->id}}" {{ request()->project_id == $val->id ? 'selected':''}}>{{$val->project_name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-md-3">
                                    <button type="submit" class="col-md-12 btn btn-success notika-btn-success">Search</button>
                                </div>
                            </form>
                            <div class="col-md-1" style="height: 70px;"></div>
                            <div class="col-md-6 ">

                            </div>

                            <table id="data-table-basic" class="table table-hover">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Project Name</th>
                                    <th>Engineer Name</th>
                                    <th>Description</th>
                                    <th>Model No</th>
                                    <th>Brand Name</th>
                                    <th>Quantity</th>
                                    <th>Return Reason</th>
                                    <th>Date</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($data as $k => $val)
                                    <tr>
                                        <td>{{$k+1}}</td>
                                        <td>{{$val->project_name}}</td>
                                        <td>{{$val->engineer_name}}</td>
                                        <td>{{$val->item_name}}</td>
                                        <td>{{$val->model_no}}</td>
                                        <td>{{$val->brand_name}}</td>
                                        <td>{{$val->quantity}}</td>
                                        <td>{{$val->reason}}</td>
                                        <td>{{$val->date}}</td>
                                    </tr>
                                @endforeach
                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>#</th>
                                    <th>Project Name</th>
                                    <th>Engineer Name</th>
                                    <th>Description</th>
                                    <th>Model No</th>
                                    <th>Brand Name</th>
                                    <th>Quantity</th>
                                    <th>Return Reason</th>
                                    <th>Date</th>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{--    <script src="{{asset('js/inventory/main.js')}}"></script>--}}

@endsection
