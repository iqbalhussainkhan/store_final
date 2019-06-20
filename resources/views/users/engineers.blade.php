
@extends('layouts.app')
@section('content')

    <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor">

        <!-- begin:: Content Head -->
        <div class="kt-subheader   kt-grid__item" id="kt_subheader">
            <div class="kt-subheader__main">

                <a href="{{asset('home')}}"><h3 class="kt-subheader__title">Admin Dashboard</h3></a>

                <span class="kt-subheader__separator kt-subheader__separator--v"></span>

                <span class="kt-subheader__desc"></span>

                <a href="#" class="btn btn-label-warning btn-bold btn-sm btn-icon-h kt-margin-l-10">
                    Users
                </a>
                <a href="#" class="btn btn-label-success btn-bold btn-sm btn-icon-h kt-margin-l-10">
                    All Users
                </a>



                <div class="kt-input-icon kt-input-icon--right kt-subheader__search kt-hidden">
                    <input type="text" class="form-control" placeholder="Search order..." id="generalSearch">
                    <span class="kt-input-icon__icon kt-input-icon__icon--right">
					    <span><i class="flaticon2-search-1"></i></span>
                    </span>
                </div>
            </div>
            <div class="kt-subheader__toolbar">
                <div class="kt-subheader__wrapper">
                    <a href="#" class="btn kt-subheader__btn-secondary">{{ Carbon\Carbon::now()->dayName }}</a>

                    <a href="#" class="btn kt-subheader__btn-secondary">{{ Carbon\Carbon::now()->monthName }}</a>

                    <a href="#" class="btn kt-subheader__btn-secondary">{{ Carbon\Carbon::now()->year }}</a></a>
                </div>
            </div>
        </div>
        <div class="kt-content  kt-grid__item kt-grid__item--fluid" id="kt_content">



    <div class="kt-portlet kt-portlet--mobile">
        <div class="kt-portlet__head kt-portlet__head--lg">
            <div class="kt-portlet__head-label">
			<span class="kt-portlet__head-icon">
				<i class="kt-font-brand flaticon2-line-chart"></i>
			</span>
                <h3 class="kt-portlet__head-title">
                    Local Datasource
                </h3>
            </div>
            <div class="kt-portlet__head-toolbar">
                <div class="kt-portlet__head-wrapper">
                    <a href="#" class="btn btn-clean btn-icon-sm">
                        <i class="la la-long-arrow-left"></i>
                        Back
                    </a>
                    &nbsp;
                    <div class="dropdown dropdown-inline">
                        <button type="button" class="btn btn-brand btn-icon-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="flaticon2-plus"></i> Add New
                        </button>
                        <div class="dropdown-menu dropdown-menu-right">
                            <ul class="kt-nav">
                                <li class="kt-nav__section kt-nav__section--first">
                                    <span class="kt-nav__section-text">Choose an action:</span>
                                </li>
                                <li class="kt-nav__item">
                                    <a href="#" class="kt-nav__link">
                                        <i class="kt-nav__link-icon flaticon2-open-text-book"></i>
                                        <span class="kt-nav__link-text">Reservations</span>
                                    </a>
                                </li>
                                <li class="kt-nav__item">
                                    <a href="#" class="kt-nav__link">
                                        <i class="kt-nav__link-icon flaticon2-calendar-4"></i>
                                        <span class="kt-nav__link-text">Appointments</span>
                                    </a>
                                </li>
                                <li class="kt-nav__item">
                                    <a href="#" class="kt-nav__link">
                                        <i class="kt-nav__link-icon flaticon2-bell-alarm-symbol"></i>
                                        <span class="kt-nav__link-text">Reminders</span>
                                    </a>
                                </li>
                                <li class="kt-nav__item">
                                    <a href="#" class="kt-nav__link">
                                        <i class="kt-nav__link-icon flaticon2-contract"></i>
                                        <span class="kt-nav__link-text">Announcements</span>
                                    </a>
                                </li>
                                <li class="kt-nav__item">
                                    <a href="#" class="kt-nav__link">
                                        <i class="kt-nav__link-icon flaticon2-shopping-cart-1"></i>
                                        <span class="kt-nav__link-text">Orders</span>
                                    </a>
                                </li>
                                <li class="kt-nav__separator kt-nav__separator--fit">
                                </li>
                                <li class="kt-nav__item">
                                    <a href="#" class="kt-nav__link">
                                        <i class="kt-nav__link-icon flaticon2-rocket-1"></i>
                                        <span class="kt-nav__link-text">Projects</span>
                                    </a>
                                </li>
                                <li class="kt-nav__item">
                                    <a href="#" class="kt-nav__link">
                                        <i class="kt-nav__link-icon flaticon2-chat-1"></i>
                                        <span class="kt-nav__link-text">User Feedbacks</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>		</div>
        </div>

        <div class="kt-portlet__body">
            <!--begin: Search Form -->
            <div class="kt-form kt-form--label-right kt-margin-t-20 kt-margin-b-10">
                <div class="row align-items-center">
                    <div class="col-xl-8 order-2 order-xl-1">
                        <div class="row align-items-center">
                            <div class="col-md-4 kt-margin-b-20-tablet-and-mobile">
                                <div class="kt-input-icon kt-input-icon--left">
                                    <input type="text" class="form-control" placeholder="Search..." id="generalSearch">
                                    <span class="kt-input-icon__icon kt-input-icon__icon--left">
							<span><i class="la la-search"></i></span>
						</span>
                                </div>
                            </div>
                            <div class="col-md-4 kt-margin-b-20-tablet-and-mobile">
                                <div class="kt-form__group kt-form__group--inline">
                                    <div class="kt-form__label">
                                        <label>Status:</label>
                                    </div>
                                    <div class="kt-form__control">
                                        <div class="dropdown bootstrap-select form-control"><select class="form-control bootstrap-select" id="kt_form_status" tabindex="-98">
                                                <option value="">All</option>
                                                <option value="1">Pending</option>
                                                <option value="2">Delivered</option>
                                                <option value="3">Canceled</option>
                                                <option value="4">Success</option>
                                                <option value="5">Info</option>
                                                <option value="6">Danger</option>
                                            </select><button type="button" class="btn dropdown-toggle bs-placeholder btn-light" data-toggle="dropdown" role="button" data-id="kt_form_status" title="All"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner">All</div></div> </div></button><div class="dropdown-menu " role="combobox"><div class="inner show" role="listbox" aria-expanded="false" tabindex="-1"><ul class="dropdown-menu inner show"></ul></div></div></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 kt-margin-b-20-tablet-and-mobile">
                                <div class="kt-form__group kt-form__group--inline">
                                    <div class="kt-form__label">
                                        <label>Type:</label>
                                    </div>
                                    <div class="kt-form__control">
                                        <div class="dropdown bootstrap-select form-control"><select class="form-control bootstrap-select" id="kt_form_type" tabindex="-98">
                                                <option value="">All</option>
                                                <option value="1">Online</option>
                                                <option value="2">Retail</option>
                                                <option value="3">Direct</option>
                                            </select><button type="button" class="btn dropdown-toggle bs-placeholder btn-light" data-toggle="dropdown" role="button" data-id="kt_form_type" title="All"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner">All</div></div> </div></button><div class="dropdown-menu " role="combobox"><div class="inner show" role="listbox" aria-expanded="false" tabindex="-1"><ul class="dropdown-menu inner show"></ul></div></div></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 order-1 order-xl-2 kt-align-right">
                        <a href="#" class="btn btn-default kt-hidden">
                            <i class="la la-cart-plus"></i> New Order
                        </a>
                        <div class="kt-separator kt-separator--border-dashed kt-separator--space-lg d-xl-none"></div>
                    </div>
                </div>
            </div>		<!--end: Search Form -->
        </div>
        <div class="kt-portlet__body kt-portlet__body--fit">
            <!--begin: Datatable -->
            <div class="kt-datatable kt-datatable--default kt-datatable--brand kt-datatable--loaded" id="local_data" style=""><table class="kt-datatable__table" style="display: block; min-height: 500px;"><thead class="kt-datatable__head"><tr class="kt-datatable__row" style="left: 0px;"><th data-field="RecordID" class="kt-datatable__cell--center kt-datatable__cell kt-datatable__cell--check"><span style="width: 20px;"><label class="kt-checkbox kt-checkbox--single kt-checkbox--all kt-checkbox--solid"><input type="checkbox">&nbsp;<span></span></label></span></th><th data-field="OrderID" class="kt-datatable__cell kt-datatable__cell--sort"><span style="width: 181px;">Order ID</span></th><th data-field="Country" class="kt-datatable__cell kt-datatable__cell--sort"><span style="width: 181px;">Country</span></th><th data-field="ShipDate" class="kt-datatable__cell kt-datatable__cell--sort"><span style="width: 181px;">Ship Date</span></th><th data-field="CompanyName" class="kt-datatable__cell kt-datatable__cell--sort"><span style="width: 181px;">Company Name</span></th><th data-field="Status" class="kt-datatable__cell kt-datatable__cell--sort"><span style="width: 181px;">Status</span></th><th data-field="Type" data-autohide-disabled="false" class="kt-datatable__cell kt-datatable__cell--sort"><span style="width: 181px;">Type</span></th><th data-field="Actions" data-autohide-disabled="false" class="kt-datatable__cell kt-datatable__cell--sort"><span style="width: 110px;">Actions</span></th></tr></thead><tbody class="kt-datatable__body" style=""><tr data-row="0" class="kt-datatable__row" style="left: 0px;"><td class="kt-datatable__cell--center kt-datatable__cell kt-datatable__cell--check" data-field="RecordID"><span style="width: 20px;"><label class="kt-checkbox kt-checkbox--single kt-checkbox--solid"><input type="checkbox" value="41">&nbsp;<span></span></label></span></td><td data-field="OrderID" class="kt-datatable__cell"><span style="width: 181px;">63736-027</span></td><td data-field="Country" class="kt-datatable__cell"><span style="width: 181px;">China CN</span></td><td data-field="ShipDate" class="kt-datatable__cell"><span style="width: 181px;">10/21/2016</span></td><td data-field="CompanyName" class="kt-datatable__cell"><span style="width: 181px;">Larson Inc</span></td><td data-field="Status" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge  kt-badge--success kt-badge--inline kt-badge--pill">Success</span></span></td><td data-field="Type" data-autohide-disabled="false" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge kt-badge--primary kt-badge--dot"></span>&nbsp;<span class="kt-font-bold kt-font-primary">Retail</span></span></td><td data-field="Actions" data-autohide-disabled="false" class="kt-datatable__cell"><span style="overflow: visible; position: relative; width: 110px;">						<div class="dropdown">							<a data-toggle="dropdown" class="btn btn-sm btn-clean btn-icon btn-icon-md">                                <i class="la la-cog"></i>                            </a>						  	<div class="dropdown-menu dropdown-menu-right">						    	<a href="#" class="dropdown-item"><i class="la la-edit"></i> Edit Details</a>						    	<a href="#" class="dropdown-item"><i class="la la-leaf"></i> Update Status</a>						    	<a href="#" class="dropdown-item"><i class="la la-print"></i> Generate Report</a>						  	</div>						</div>						<a title="Edit details" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-edit"></i>						</a>						<a title="Delete" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-trash"></i>						</a>					</span></td></tr><tr data-row="1" class="kt-datatable__row kt-datatable__row--even" style="left: 0px;"><td class="kt-datatable__cell--center kt-datatable__cell kt-datatable__cell--check" data-field="RecordID"><span style="width: 20px;"><label class="kt-checkbox kt-checkbox--single kt-checkbox--solid"><input type="checkbox" value="42">&nbsp;<span></span></label></span></td><td data-field="OrderID" class="kt-datatable__cell"><span style="width: 181px;">54575-228</span></td><td data-field="Country" class="kt-datatable__cell"><span style="width: 181px;">China CN</span></td><td data-field="ShipDate" class="kt-datatable__cell"><span style="width: 181px;">11/13/2017</span></td><td data-field="CompanyName" class="kt-datatable__cell"><span style="width: 181px;">Robel, Hegmann and Grimes</span></td><td data-field="Status" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge kt-badge--brand kt-badge--inline kt-badge--pill">Pending</span></span></td><td data-field="Type" data-autohide-disabled="false" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge kt-badge--danger kt-badge--dot"></span>&nbsp;<span class="kt-font-bold kt-font-danger">Online</span></span></td><td data-field="Actions" data-autohide-disabled="false" class="kt-datatable__cell"><span style="overflow: visible; position: relative; width: 110px;">						<div class="dropdown">							<a data-toggle="dropdown" class="btn btn-sm btn-clean btn-icon btn-icon-md">                                <i class="la la-cog"></i>                            </a>						  	<div class="dropdown-menu dropdown-menu-right">						    	<a href="#" class="dropdown-item"><i class="la la-edit"></i> Edit Details</a>						    	<a href="#" class="dropdown-item"><i class="la la-leaf"></i> Update Status</a>						    	<a href="#" class="dropdown-item"><i class="la la-print"></i> Generate Report</a>						  	</div>						</div>						<a title="Edit details" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-edit"></i>						</a>						<a title="Delete" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-trash"></i>						</a>					</span></td></tr><tr data-row="2" class="kt-datatable__row" style="left: 0px;"><td class="kt-datatable__cell--center kt-datatable__cell kt-datatable__cell--check" data-field="RecordID"><span style="width: 20px;"><label class="kt-checkbox kt-checkbox--single kt-checkbox--solid"><input type="checkbox" value="43">&nbsp;<span></span></label></span></td><td data-field="OrderID" class="kt-datatable__cell"><span style="width: 181px;">52125-370</span></td><td data-field="Country" class="kt-datatable__cell"><span style="width: 181px;">China CN</span></td><td data-field="ShipDate" class="kt-datatable__cell"><span style="width: 181px;">3/25/2016</span></td><td data-field="CompanyName" class="kt-datatable__cell"><span style="width: 181px;">Armstrong, Shields and Osinski</span></td><td data-field="Status" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge  kt-badge--info kt-badge--inline kt-badge--pill">Info</span></span></td><td data-field="Type" data-autohide-disabled="false" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge kt-badge--danger kt-badge--dot"></span>&nbsp;<span class="kt-font-bold kt-font-danger">Online</span></span></td><td data-field="Actions" data-autohide-disabled="false" class="kt-datatable__cell"><span style="overflow: visible; position: relative; width: 110px;">						<div class="dropdown">							<a data-toggle="dropdown" class="btn btn-sm btn-clean btn-icon btn-icon-md">                                <i class="la la-cog"></i>                            </a>						  	<div class="dropdown-menu dropdown-menu-right">						    	<a href="#" class="dropdown-item"><i class="la la-edit"></i> Edit Details</a>						    	<a href="#" class="dropdown-item"><i class="la la-leaf"></i> Update Status</a>						    	<a href="#" class="dropdown-item"><i class="la la-print"></i> Generate Report</a>						  	</div>						</div>						<a title="Edit details" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-edit"></i>						</a>						<a title="Delete" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-trash"></i>						</a>					</span></td></tr><tr data-row="3" class="kt-datatable__row kt-datatable__row--even" style="left: 0px;"><td class="kt-datatable__cell--center kt-datatable__cell kt-datatable__cell--check" data-field="RecordID"><span style="width: 20px;"><label class="kt-checkbox kt-checkbox--single kt-checkbox--solid"><input type="checkbox" value="44">&nbsp;<span></span></label></span></td><td data-field="OrderID" class="kt-datatable__cell"><span style="width: 181px;">36987-3290</span></td><td data-field="Country" class="kt-datatable__cell"><span style="width: 181px;">South Africa ZA</span></td><td data-field="ShipDate" class="kt-datatable__cell"><span style="width: 181px;">7/9/2016</span></td><td data-field="CompanyName" class="kt-datatable__cell"><span style="width: 181px;">Larson-Kunze</span></td><td data-field="Status" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge  kt-badge--primary kt-badge--inline kt-badge--pill">Canceled</span></span></td><td data-field="Type" data-autohide-disabled="false" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge kt-badge--primary kt-badge--dot"></span>&nbsp;<span class="kt-font-bold kt-font-primary">Retail</span></span></td><td data-field="Actions" data-autohide-disabled="false" class="kt-datatable__cell"><span style="overflow: visible; position: relative; width: 110px;">						<div class="dropdown">							<a data-toggle="dropdown" class="btn btn-sm btn-clean btn-icon btn-icon-md">                                <i class="la la-cog"></i>                            </a>						  	<div class="dropdown-menu dropdown-menu-right">						    	<a href="#" class="dropdown-item"><i class="la la-edit"></i> Edit Details</a>						    	<a href="#" class="dropdown-item"><i class="la la-leaf"></i> Update Status</a>						    	<a href="#" class="dropdown-item"><i class="la la-print"></i> Generate Report</a>						  	</div>						</div>						<a title="Edit details" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-edit"></i>						</a>						<a title="Delete" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-trash"></i>						</a>					</span></td></tr><tr data-row="4" class="kt-datatable__row" style="left: 0px;"><td class="kt-datatable__cell--center kt-datatable__cell kt-datatable__cell--check" data-field="RecordID"><span style="width: 20px;"><label class="kt-checkbox kt-checkbox--single kt-checkbox--solid"><input type="checkbox" value="45">&nbsp;<span></span></label></span></td><td data-field="OrderID" class="kt-datatable__cell"><span style="width: 181px;">68737-236</span></td><td data-field="Country" class="kt-datatable__cell"><span style="width: 181px;">Russia RU</span></td><td data-field="ShipDate" class="kt-datatable__cell"><span style="width: 181px;">5/31/2016</span></td><td data-field="CompanyName" class="kt-datatable__cell"><span style="width: 181px;">Cronin-Purdy</span></td><td data-field="Status" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge  kt-badge--danger kt-badge--inline kt-badge--pill">Delivered</span></span></td><td data-field="Type" data-autohide-disabled="false" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge kt-badge--danger kt-badge--dot"></span>&nbsp;<span class="kt-font-bold kt-font-danger">Online</span></span></td><td data-field="Actions" data-autohide-disabled="false" class="kt-datatable__cell"><span style="overflow: visible; position: relative; width: 110px;">						<div class="dropdown">							<a data-toggle="dropdown" class="btn btn-sm btn-clean btn-icon btn-icon-md">                                <i class="la la-cog"></i>                            </a>						  	<div class="dropdown-menu dropdown-menu-right">						    	<a href="#" class="dropdown-item"><i class="la la-edit"></i> Edit Details</a>						    	<a href="#" class="dropdown-item"><i class="la la-leaf"></i> Update Status</a>						    	<a href="#" class="dropdown-item"><i class="la la-print"></i> Generate Report</a>						  	</div>						</div>						<a title="Edit details" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-edit"></i>						</a>						<a title="Delete" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-trash"></i>						</a>					</span></td></tr><tr data-row="5" class="kt-datatable__row kt-datatable__row--even" style="left: 0px;"><td class="kt-datatable__cell--center kt-datatable__cell kt-datatable__cell--check" data-field="RecordID"><span style="width: 20px;"><label class="kt-checkbox kt-checkbox--single kt-checkbox--solid"><input type="checkbox" value="46">&nbsp;<span></span></label></span></td><td data-field="OrderID" class="kt-datatable__cell"><span style="width: 181px;">54868-5511</span></td><td data-field="Country" class="kt-datatable__cell"><span style="width: 181px;">Portugal PT</span></td><td data-field="ShipDate" class="kt-datatable__cell"><span style="width: 181px;">5/16/2017</span></td><td data-field="CompanyName" class="kt-datatable__cell"><span style="width: 181px;">Skiles-McCullough</span></td><td data-field="Status" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge  kt-badge--danger kt-badge--inline kt-badge--pill">Delivered</span></span></td><td data-field="Type" data-autohide-disabled="false" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge kt-badge--danger kt-badge--dot"></span>&nbsp;<span class="kt-font-bold kt-font-danger">Online</span></span></td><td data-field="Actions" data-autohide-disabled="false" class="kt-datatable__cell"><span style="overflow: visible; position: relative; width: 110px;">						<div class="dropdown">							<a data-toggle="dropdown" class="btn btn-sm btn-clean btn-icon btn-icon-md">                                <i class="la la-cog"></i>                            </a>						  	<div class="dropdown-menu dropdown-menu-right">						    	<a href="#" class="dropdown-item"><i class="la la-edit"></i> Edit Details</a>						    	<a href="#" class="dropdown-item"><i class="la la-leaf"></i> Update Status</a>						    	<a href="#" class="dropdown-item"><i class="la la-print"></i> Generate Report</a>						  	</div>						</div>						<a title="Edit details" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-edit"></i>						</a>						<a title="Delete" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-trash"></i>						</a>					</span></td></tr><tr data-row="6" class="kt-datatable__row" style="left: 0px;"><td class="kt-datatable__cell--center kt-datatable__cell kt-datatable__cell--check" data-field="RecordID"><span style="width: 20px;"><label class="kt-checkbox kt-checkbox--single kt-checkbox--solid"><input type="checkbox" value="47">&nbsp;<span></span></label></span></td><td data-field="OrderID" class="kt-datatable__cell"><span style="width: 181px;">51389-112</span></td><td data-field="Country" class="kt-datatable__cell"><span style="width: 181px;">Poland PL</span></td><td data-field="ShipDate" class="kt-datatable__cell"><span style="width: 181px;">9/5/2016</span></td><td data-field="CompanyName" class="kt-datatable__cell"><span style="width: 181px;">Kub LLC</span></td><td data-field="Status" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge  kt-badge--info kt-badge--inline kt-badge--pill">Info</span></span></td><td data-field="Type" data-autohide-disabled="false" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge kt-badge--primary kt-badge--dot"></span>&nbsp;<span class="kt-font-bold kt-font-primary">Retail</span></span></td><td data-field="Actions" data-autohide-disabled="false" class="kt-datatable__cell"><span style="overflow: visible; position: relative; width: 110px;">						<div class="dropdown">							<a data-toggle="dropdown" class="btn btn-sm btn-clean btn-icon btn-icon-md">                                <i class="la la-cog"></i>                            </a>						  	<div class="dropdown-menu dropdown-menu-right">						    	<a href="#" class="dropdown-item"><i class="la la-edit"></i> Edit Details</a>						    	<a href="#" class="dropdown-item"><i class="la la-leaf"></i> Update Status</a>						    	<a href="#" class="dropdown-item"><i class="la la-print"></i> Generate Report</a>						  	</div>						</div>						<a title="Edit details" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-edit"></i>						</a>						<a title="Delete" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-trash"></i>						</a>					</span></td></tr><tr data-row="7" class="kt-datatable__row kt-datatable__row--even" style="left: 0px;"><td class="kt-datatable__cell--center kt-datatable__cell kt-datatable__cell--check" data-field="RecordID"><span style="width: 20px;"><label class="kt-checkbox kt-checkbox--single kt-checkbox--solid"><input type="checkbox" value="48">&nbsp;<span></span></label></span></td><td data-field="OrderID" class="kt-datatable__cell"><span style="width: 181px;">53346-1330</span></td><td data-field="Country" class="kt-datatable__cell"><span style="width: 181px;">Indonesia ID</span></td><td data-field="ShipDate" class="kt-datatable__cell"><span style="width: 181px;">5/8/2016</span></td><td data-field="CompanyName" class="kt-datatable__cell"><span style="width: 181px;">Mraz-Spinka</span></td><td data-field="Status" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge  kt-badge--primary kt-badge--inline kt-badge--pill">Canceled</span></span></td><td data-field="Type" data-autohide-disabled="false" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge kt-badge--primary kt-badge--dot"></span>&nbsp;<span class="kt-font-bold kt-font-primary">Retail</span></span></td><td data-field="Actions" data-autohide-disabled="false" class="kt-datatable__cell"><span style="overflow: visible; position: relative; width: 110px;">						<div class="dropdown">							<a data-toggle="dropdown" class="btn btn-sm btn-clean btn-icon btn-icon-md">                                <i class="la la-cog"></i>                            </a>						  	<div class="dropdown-menu dropdown-menu-right">						    	<a href="#" class="dropdown-item"><i class="la la-edit"></i> Edit Details</a>						    	<a href="#" class="dropdown-item"><i class="la la-leaf"></i> Update Status</a>						    	<a href="#" class="dropdown-item"><i class="la la-print"></i> Generate Report</a>						  	</div>						</div>						<a title="Edit details" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-edit"></i>						</a>						<a title="Delete" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-trash"></i>						</a>					</span></td></tr><tr data-row="8" class="kt-datatable__row" style="left: 0px;"><td class="kt-datatable__cell--center kt-datatable__cell kt-datatable__cell--check" data-field="RecordID"><span style="width: 20px;"><label class="kt-checkbox kt-checkbox--single kt-checkbox--solid"><input type="checkbox" value="49">&nbsp;<span></span></label></span></td><td data-field="OrderID" class="kt-datatable__cell"><span style="width: 181px;">11410-803</span></td><td data-field="Country" class="kt-datatable__cell"><span style="width: 181px;">China CN</span></td><td data-field="ShipDate" class="kt-datatable__cell"><span style="width: 181px;">12/24/2017</span></td><td data-field="CompanyName" class="kt-datatable__cell"><span style="width: 181px;">Cartwright-Cole</span></td><td data-field="Status" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge  kt-badge--primary kt-badge--inline kt-badge--pill">Canceled</span></span></td><td data-field="Type" data-autohide-disabled="false" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge kt-badge--success kt-badge--dot"></span>&nbsp;<span class="kt-font-bold kt-font-success">Direct</span></span></td><td data-field="Actions" data-autohide-disabled="false" class="kt-datatable__cell"><span style="overflow: visible; position: relative; width: 110px;">						<div class="dropdown">							<a data-toggle="dropdown" class="btn btn-sm btn-clean btn-icon btn-icon-md">                                <i class="la la-cog"></i>                            </a>						  	<div class="dropdown-menu dropdown-menu-right">						    	<a href="#" class="dropdown-item"><i class="la la-edit"></i> Edit Details</a>						    	<a href="#" class="dropdown-item"><i class="la la-leaf"></i> Update Status</a>						    	<a href="#" class="dropdown-item"><i class="la la-print"></i> Generate Report</a>						  	</div>						</div>						<a title="Edit details" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-edit"></i>						</a>						<a title="Delete" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-trash"></i>						</a>					</span></td></tr><tr data-row="9" class="kt-datatable__row kt-datatable__row--even" style="left: 0px;"><td class="kt-datatable__cell--center kt-datatable__cell kt-datatable__cell--check" data-field="RecordID"><span style="width: 20px;"><label class="kt-checkbox kt-checkbox--single kt-checkbox--solid"><input type="checkbox" value="50">&nbsp;<span></span></label></span></td><td data-field="OrderID" class="kt-datatable__cell"><span style="width: 181px;">54473-254</span></td><td data-field="Country" class="kt-datatable__cell"><span style="width: 181px;">Australia AU</span></td><td data-field="ShipDate" class="kt-datatable__cell"><span style="width: 181px;">9/6/2016</span></td><td data-field="CompanyName" class="kt-datatable__cell"><span style="width: 181px;">Ankunding-Hudson</span></td><td data-field="Status" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge  kt-badge--danger kt-badge--inline kt-badge--pill">Delivered</span></span></td><td data-field="Type" data-autohide-disabled="false" class="kt-datatable__cell"><span style="width: 181px;"><span class="kt-badge kt-badge--danger kt-badge--dot"></span>&nbsp;<span class="kt-font-bold kt-font-danger">Online</span></span></td><td data-field="Actions" data-autohide-disabled="false" class="kt-datatable__cell"><span style="overflow: visible; position: relative; width: 110px;">						<div class="dropdown">							<a data-toggle="dropdown" class="btn btn-sm btn-clean btn-icon btn-icon-md">                                <i class="la la-cog"></i>                            </a>						  	<div class="dropdown-menu dropdown-menu-right">						    	<a href="#" class="dropdown-item"><i class="la la-edit"></i> Edit Details</a>						    	<a href="#" class="dropdown-item"><i class="la la-leaf"></i> Update Status</a>						    	<a href="#" class="dropdown-item"><i class="la la-print"></i> Generate Report</a>						  	</div>						</div>						<a title="Edit details" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-edit"></i>						</a>						<a title="Delete" class="btn btn-sm btn-clean btn-icon btn-icon-md">							<i class="la la-trash"></i>						</a>					</span></td></tr></tbody></table><div class="kt-datatable__pager kt-datatable--paging-loaded"><ul class="kt-datatable__pager-nav"><li><a title="First" class="kt-datatable__pager-link kt-datatable__pager-link--first" data-page="1"><i class="flaticon2-fast-back"></i></a></li><li><a title="Previous" class="kt-datatable__pager-link kt-datatable__pager-link--prev" data-page="4"><i class="flaticon2-back"></i></a></li><li style=""></li><li style="display: none;"><input type="text" class="kt-pager-input form-control" title="Page number"></li><li><a class="kt-datatable__pager-link kt-datatable__pager-link-number" data-page="1" title="1">1</a></li><li><a class="kt-datatable__pager-link kt-datatable__pager-link-number" data-page="2" title="2">2</a></li><li><a class="kt-datatable__pager-link kt-datatable__pager-link-number" data-page="3" title="3">3</a></li><li><a class="kt-datatable__pager-link kt-datatable__pager-link-number" data-page="4" title="4">4</a></li><li><a class="kt-datatable__pager-link kt-datatable__pager-link-number kt-datatable__pager-link--active" data-page="5" title="5">5</a></li><li></li><li><a title="Next" class="kt-datatable__pager-link kt-datatable__pager-link--next" data-page="6"><i class="flaticon2-next"></i></a></li><li><a title="Last" class="kt-datatable__pager-link kt-datatable__pager-link--last" data-page="10"><i class="flaticon2-fast-next"></i></a></li></ul><div class="kt-datatable__pager-info"><div class="dropdown bootstrap-select kt-datatable__pager-size" style="width: 60px;"><select class="selectpicker kt-datatable__pager-size" title="Select page size" data-width="60px" data-selected="10" tabindex="-98"><option class="bs-title-option" value=""></option><option value="10">10</option><option value="20">20</option><option value="30">30</option><option value="50">50</option><option value="100">100</option></select><button type="button" class="btn dropdown-toggle btn-light" data-toggle="dropdown" role="button" title="Select page size"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner">10</div></div> </div></button><div class="dropdown-menu " role="combobox"><div class="inner show" role="listbox" aria-expanded="false" tabindex="-1"><ul class="dropdown-menu inner show"></ul></div></div></div><span class="kt-datatable__pager-detail">Showing 41 - 50 of 100</span></div></div></div>
            <!--end: Datatable -->
        </div>
    </div>
    </div>


        <script src="{{asset('assets/data_tables/data-local.js')}}" type="text/javascript"></script>
    {{--<script src="{{asset('js/categories/main.js')}}"></script>--}}

@endsection
