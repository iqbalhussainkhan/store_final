@extends('layouts.app')
@include('includes.header')
@include('includes.menu')
@section('content')
    {{--@php--}}
    {{--echo "<pre>";--}}
    {{--print_r($item);die();--}}
    {{--@endphp--}}
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
                                        <h2>{{Session('project_name')}}</h2>
                                        <p>Receiving Tools/Asset Reports</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
                                <div class="breadcomb-report">
                                    <div class="breadcomb-report">
                                        <a href="{{ url()->previous() }}" data-toggle="tooltip" data-placement="right" title="Back" class="btn"><i class="notika-icon notika-back" style="font-weight: bold;  "></i><span></span></a>
                                    </div>
                                </div>
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
                            <h2>Material Delivery Details</h2>
                        </div>
                        <div class="table-responsive">
                            <table id="data-table-basic" class="table table-hover">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Category</th>
                                    <th>Item</th>
                                    <th>Model No</th>
                                    <th>Asset No</th>
                                    <th>Photo</th>
                                    <th>Location</th>
                                    <th>Date</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($data as $k => $val)
                                    <tr>
                                        <td>{{$val->id}}</td>
                                        <td>{{$val->title}}</td>
                                        <td>{{$val->description}}</td>
                                        <td>{{$val->model}}</td>
                                        <td>{{$val->asset_no}}</td>
                                        <td><a  href="{{asset('attachments/items_images/'.$val->image)}}"><i class="fa fa-image"></i></a></td>
                                        <td>{{$val->location}}</td>
                                        <td> {{Carbon\Carbon::parse($val->created_at)->format('Y-m-d') }}</td>
                                    </tr>
                                @endforeach
                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>#</th>
                                    <th>Category</th>
                                    <th>Item</th>
                                    <th>Model No</th>
                                    <th>Asset No</th>
                                    <th>Photo</th>
                                    <th>Location</th>
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
    <script src="{{asset('js/categories/main.js')}}"></script>
@endsection
