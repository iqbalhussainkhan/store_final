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
                                    <div class="breadcomb-ctn" style="margin-top: 10px;">
                                        <h2>{{Session::get('project_name')}}</h2>
                                        <p>Tools/Asset Delivery</p>
                                    </div>
                                </div>
                            </div>
                            @if(session('success'))
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin-top: 20px;">
                                        <div class="alert alert-success">
                                            <ul>
                                                <li><i class="fa fa-check"></i> {{session('success')}}</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            @endif
                        </div>
                    </div>
                    <form action="{{asset('/projects/addProjectToolsRequest')}}" method="post" id="addProjectToolsRequest" enctype="multipart/form-data">
                        {{csrf_field()}}
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-example-wrap mg-t-30">
                                    <div class="form-example-int form-horizental">
                                        <div class="cmp-tb-hd cmp-int-hd">
                                            <div class="breadcomb-report">
                                                <a onclick="addRow()" data-placement="left" title="Add Coloumn" class="btn waves-effect"><i class="notika-icon notika-plus-symbol"></i></a>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <table class="table" id="recivingGoodsTable">
                                                    <tr>
                                                        <th>Category</th>
                                                        <th>Description</th>
                                                        <th width="100px;">Model</th>
                                                        <th width="100px;">Asset No</th>
                                                        <th width="250px;">Image</th>
                                                        <th>Location</th>
                                                        <th>Actions</th>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <select class="form-control categories" name="categories[]" id="categories"  onchange="getProjectToolsCategoryItems(this)" >
                                                                <option value="">Select Category</option>
                                                                @foreach($categories as $k => $val)
                                                                    <option value="{{$val->id}}" {{isset($data->category_id) &&  $data->category_id == $val->id ? 'selected' : ''}}>{{$val->title}}</option>
                                                                @endforeach
                                                            </select>
                                                        </td>
                                                        <td>
                                                            <input type="text" class="form-control description" name="description[]" required placeholder="description" disabled>
                                                        </td>
                                                        <td>
                                                            <input type="text" class="form-control model" name="model[]" required placeholder="model" disabled>
                                                        </td>
                                                        <td>
                                                            <input type="text" class="form-control asset_no" name="asset_no[]" required placeholder="asset no" readonly>
                                                        </td>
                                                        <td>
                                                            <input type="file" class="form-control image"  name="image[]" required disabled>
                                                        </td>
                                                        <td>
                                                            <input type="text" class="form-control location"  name="location[]" required disabled>
                                                        </td>
                                                        <td></td>
                                                    </tr>
                                                </table>
                                                <hr>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>


                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-example-wrap mg-t-30">
                                    <div class="form-example-int form-horizental">
                                        {{--<div class="cmp-tb-hd cmp-int-hd">--}}
                                        {{--<h2>Add Details</h2>--}}
                                        {{--</div>--}}
                                        <div class="form-group">
                                            {{csrf_field()}}
                                            <input type="hidden" name="project_id" value="{{Session::get('project_id')}}">
                                            <div class="form-example-int form-horizental">
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                                            <label class="hrzn-fm "><strong>Supplier Name</strong></label>
                                                        </div>
                                                        <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                                            <div class="nk-int-st">
                                                                <input type="text" id="reciving_from" name="reciving_from" class="form-control input-md" placeholder="Supplier Name" required>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="row">
                                                        <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                                            <label class="hrzn-fm "><strong>Delivery Note</strong></label>
                                                        </div>
                                                        <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                                            <div class="nk-int-st">
                                                                <input type="file" id="file" name="file" class="form-control input-md" placeholder="Reciving Form" required>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-example-int mg-t-15">
                                                <div class="row">
                                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                                    </div>
                                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                                        <br>
                                                        <button  onclick="validateProjectToolsRequest()" class="btn btn-success notika-btn-success pull-right" style="padding: 10px 20px;margin-right: 40px;">Add Request</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <table>

                            <tr id="main_row" style="display:none;">
                                <td>
                                    <select class="form-control categories" name="categories[]" id="categories"  onchange="getProjectToolsCategoryItems(this)" >
                                        <option value="">Select Category</option>
                                        @foreach($categories as $k => $val)
                                            <option value="{{$val->id}}" {{isset($data->category_id) &&  $data->category_id == $val->id ? 'selected' : ''}}>{{$val->title}}</option>
                                        @endforeach
                                    </select>
                                </td>
                                <td>
                                    <input type="text" class="form-control description" name="description[]" required placeholder="description" disabled>
                                </td>
                                <td>
                                    <input type="text" class="form-control model" name="model[]" required placeholder="model" disabled>
                                </td>
                                <td>
                                    <input type="text" class="form-control asset_no" name="asset_no[]" required placeholder="asset no" readonly>
                                </td>
                                <td>
                                    <input type="file" class="form-control image"  name="image[]" required disabled>
                                </td>
                                <td>
                                    <input type="text" class="form-control location"  name="location[]" required disabled>
                                </td>
                                <td>
                                    <a onclick="remove_row(this)" title="Remove Coloumn" class="btn-danger notika-btn-danger btn waves-effect"><i class="notika-icon notika-trash"></i></a>
                                </td>
                            </tr>
                        </table>

                    </form>
                </div>
            </div>
        </div>
    </div> <script src="{{asset('js/requestedGoods/main.js')}}"></script>

@endsection
