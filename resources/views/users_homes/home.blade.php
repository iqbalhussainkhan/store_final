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
                    Sub Page is placed here
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
        <!--Begin::Dashboard 1-->

        <!--Begin::Section-->
        <div class="row">
            <div class="col-xl-4">
                <!--begin:: Widgets/Activity-->
                <div class="kt-portlet kt-portlet--fit kt-portlet--head-lg kt-portlet--head-overlay kt-portlet--skin-solid kt-portlet--height-fluid">
                    <div class="kt-portlet__head kt-portlet__head--noborder kt-portlet__space-x">
                        <div class="kt-portlet__head-label">
                            <h3 class="kt-portlet__head-title">
                                Activity
                            </h3>
                        </div>
                        <div class="kt-portlet__head-toolbar">
                            <a href="#" class="btn btn-label-light btn-sm btn-bold dropdown-toggle" data-toggle="dropdown">
                                Export
                            </a>
                            <div class="dropdown-menu dropdown-menu-fit dropdown-menu-right">
                                <ul class="kt-nav">
                                    <li class="kt-nav__section kt-nav__section--first">
                                        <span class="kt-nav__section-text">Finance</span>
                                    </li>
                                    <li class="kt-nav__item">
                                        <a href="#" class="kt-nav__link">
                                            <i class="kt-nav__link-icon flaticon2-graph-1"></i>
                                            <span class="kt-nav__link-text">Statistics</span>
                                        </a>
                                    </li>
                                    <li class="kt-nav__item">
                                        <a href="#" class="kt-nav__link">
                                            <i class="kt-nav__link-icon flaticon2-calendar-4"></i>
                                            <span class="kt-nav__link-text">Events</span>
                                        </a>
                                    </li>
                                    <li class="kt-nav__item">
                                        <a href="#" class="kt-nav__link">
                                            <i class="kt-nav__link-icon flaticon2-layers-1"></i>
                                            <span class="kt-nav__link-text">Reports</span>
                                        </a>
                                    </li>
                                    <li class="kt-nav__section kt-nav__section--first">
                                        <span class="kt-nav__section-text">HR</span>
                                    </li>
                                    <li class="kt-nav__item">
                                        <a href="#" class="kt-nav__link">
                                            <i class="kt-nav__link-icon flaticon2-calendar-4"></i>
                                            <span class="kt-nav__link-text">Notifications</span>
                                        </a>
                                    </li>
                                    <li class="kt-nav__item">
                                        <a href="#" class="kt-nav__link">
                                            <i class="kt-nav__link-icon flaticon2-file-1"></i>
                                            <span class="kt-nav__link-text">Files</span>
                                        </a>
                                    </li>
                                </ul>			</div>
                        </div>
                    </div>
                    <div class="kt-portlet__body kt-portlet__body--fit">
                        <div class="kt-widget17">
                            <div class="kt-widget17__visual kt-widget17__visual--chart kt-portlet-fit--top kt-portlet-fit--sides" style="background-color: #fd397a">
                                <div class="kt-widget17__chart" style="height:320px;">
                                    <canvas id="kt_chart_activities"></canvas>
                                </div>
                            </div>
                            <div class="kt-widget17__stats">
                                <div class="kt-widget17__items">
                                    <div class="kt-widget17__item">
						<span class="kt-widget17__icon">
							<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon kt-svg-icon--brand">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect id="bound" x="0" y="0" width="24" height="24"/>
        <path d="M5,3 L6,3 C6.55228475,3 7,3.44771525 7,4 L7,20 C7,20.5522847 6.55228475,21 6,21 L5,21 C4.44771525,21 4,20.5522847 4,20 L4,4 C4,3.44771525 4.44771525,3 5,3 Z M10,3 L11,3 C11.5522847,3 12,3.44771525 12,4 L12,20 C12,20.5522847 11.5522847,21 11,21 L10,21 C9.44771525,21 9,20.5522847 9,20 L9,4 C9,3.44771525 9.44771525,3 10,3 Z" id="Combined-Shape" fill="#000000"/>
        <rect id="Rectangle-Copy-2" fill="#000000" opacity="0.3" transform="translate(17.825568, 11.945519) rotate(-19.000000) translate(-17.825568, -11.945519) " x="16.3255682" y="2.94551858" width="3" height="18" rx="1"/>
    </g>
</svg>						</span>
                                        <span class="kt-widget17__subtitle">
							Delivered
						</span>
                                        <span class="kt-widget17__desc">
							15 New Paskages
						</span>
                                    </div>

                                    <div class="kt-widget17__item">
						<span class="kt-widget17__icon">
							<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon kt-svg-icon--success">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <polygon id="Bound" points="0 0 24 0 24 24 0 24"/>
        <path d="M12.9336061,16.072447 L19.36,10.9564761 L19.5181585,10.8312381 C20.1676248,10.3169571 20.2772143,9.3735535 19.7629333,8.72408713 C19.6917232,8.63415859 19.6104327,8.55269514 19.5206557,8.48129411 L12.9336854,3.24257445 C12.3871201,2.80788259 11.6128799,2.80788259 11.0663146,3.24257445 L4.47482784,8.48488609 C3.82645598,9.00054628 3.71887192,9.94418071 4.23453211,10.5925526 C4.30500305,10.6811601 4.38527899,10.7615046 4.47382636,10.8320511 L4.63,10.9564761 L11.0659024,16.0730648 C11.6126744,16.5077525 12.3871218,16.5074963 12.9336061,16.072447 Z" id="Shape" fill="#000000" fill-rule="nonzero"/>
        <path d="M11.0563554,18.6706981 L5.33593024,14.122919 C4.94553994,13.8125559 4.37746707,13.8774308 4.06710397,14.2678211 C4.06471678,14.2708238 4.06234874,14.2738418 4.06,14.2768747 L4.06,14.2768747 C3.75257288,14.6738539 3.82516916,15.244888 4.22214834,15.5523151 C4.22358765,15.5534297 4.2250303,15.55454 4.22647627,15.555646 L11.0872776,20.8031356 C11.6250734,21.2144692 12.371757,21.2145375 12.909628,20.8033023 L19.7677785,15.559828 C20.1693192,15.2528257 20.2459576,14.6784381 19.9389553,14.2768974 C19.9376429,14.2751809 19.9363245,14.2734691 19.935,14.2717619 L19.935,14.2717619 C19.6266937,13.8743807 19.0546209,13.8021712 18.6572397,14.1104775 C18.654352,14.112718 18.6514778,14.1149757 18.6486172,14.1172508 L12.9235044,18.6705218 C12.377022,19.1051477 11.6029199,19.1052208 11.0563554,18.6706981 Z" id="Path" fill="#000000" opacity="0.3"/>
    </g>
</svg>						</span>
                                        <span class="kt-widget17__subtitle">
							Ordered
						</span>
                                        <span class="kt-widget17__desc">
							72 New Items
						</span>
                                    </div>
                                </div>
                                <div class="kt-widget17__items">
                                    <div class="kt-widget17__item">
						<span class="kt-widget17__icon">
							<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon kt-svg-icon--warning">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect id="bound" x="0" y="0" width="24" height="24"/>
        <path d="M12.7037037,14 L15.6666667,10 L13.4444444,10 L13.4444444,6 L9,12 L11.2222222,12 L11.2222222,14 L6,14 C5.44771525,14 5,13.5522847 5,13 L5,3 C5,2.44771525 5.44771525,2 6,2 L18,2 C18.5522847,2 19,2.44771525 19,3 L19,13 C19,13.5522847 18.5522847,14 18,14 L12.7037037,14 Z" id="Combined-Shape" fill="#000000" opacity="0.3"/>
        <path d="M9.80428954,10.9142091 L9,12 L11.2222222,12 L11.2222222,16 L15.6666667,10 L15.4615385,10 L20.2072547,6.57253826 C20.4311176,6.4108595 20.7436609,6.46126971 20.9053396,6.68513259 C20.9668779,6.77033951 21,6.87277228 21,6.97787787 L21,17 C21,18.1045695 20.1045695,19 19,19 L5,19 C3.8954305,19 3,18.1045695 3,17 L3,6.97787787 C3,6.70173549 3.22385763,6.47787787 3.5,6.47787787 C3.60510559,6.47787787 3.70753836,6.51099993 3.79274528,6.57253826 L9.80428954,10.9142091 Z" id="Combined-Shape" fill="#000000"/>
    </g>
</svg>						</span>
                                        <span class="kt-widget17__subtitle">
							Reported
						</span>
                                        <span class="kt-widget17__desc">
							72 Support Cases
						</span>
                                    </div>

                                    <div class="kt-widget17__item">
						<span class="kt-widget17__icon">
							<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon kt-svg-icon--danger">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect id="bound" x="0" y="0" width="24" height="24"/>
        <path d="M3,16 L5,16 C5.55228475,16 6,15.5522847 6,15 C6,14.4477153 5.55228475,14 5,14 L3,14 L3,12 L5,12 C5.55228475,12 6,11.5522847 6,11 C6,10.4477153 5.55228475,10 5,10 L3,10 L3,8 L5,8 C5.55228475,8 6,7.55228475 6,7 C6,6.44771525 5.55228475,6 5,6 L3,6 L3,4 C3,3.44771525 3.44771525,3 4,3 L10,3 C10.5522847,3 11,3.44771525 11,4 L11,19 C11,19.5522847 10.5522847,20 10,20 L4,20 C3.44771525,20 3,19.5522847 3,19 L3,16 Z" id="Combined-Shape" fill="#000000" opacity="0.3"/>
        <path d="M16,3 L19,3 C20.1045695,3 21,3.8954305 21,5 L21,15.2485298 C21,15.7329761 20.8241635,16.200956 20.5051534,16.565539 L17.8762883,19.5699562 C17.6944473,19.7777745 17.378566,19.7988332 17.1707477,19.6169922 C17.1540423,19.602375 17.1383289,19.5866616 17.1237117,19.5699562 L14.4948466,16.565539 C14.1758365,16.200956 14,15.7329761 14,15.2485298 L14,5 C14,3.8954305 14.8954305,3 16,3 Z" id="Rectangle-102-Copy" fill="#000000"/>
    </g>
</svg>						</span>
                                        <span class="kt-widget17__subtitle">
							Arrived
						</span>
                                        <span class="kt-widget17__desc">
							34 Upgraded Boxes
						</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end:: Widgets/Activity-->	</div>
            <div class="col-xl-4">
                <!--begin:: Widgets/Inbound Bandwidth-->
                <div class="kt-portlet kt-portlet--fit kt-portlet--head-noborder kt-portlet--height-fluid-half">
                    <div class="kt-portlet__head kt-portlet__space-x">
                        <div class="kt-portlet__head-label">
                            <h3 class="kt-portlet__head-title">
                                Inbound Bandwidth
                            </h3>
                        </div>
                        <div class="kt-portlet__head-toolbar">
                            <a href="#" class="btn btn-label-success btn-sm btn-bold dropdown-toggle" data-toggle="dropdown">
                                Export
                            </a>
                            <div class="dropdown-menu dropdown-menu-fit dropdown-menu-right">
                                <ul class="kt-nav">
                                    <li class="kt-nav__item">
                                        <a href="#" class="kt-nav__link">
                                            <i class="kt-nav__link-icon flaticon2-line-chart"></i>
                                            <span class="kt-nav__link-text">Reports</span>
                                        </a>
                                    </li>
                                    <li class="kt-nav__item">
                                        <a href="#" class="kt-nav__link">
                                            <i class="kt-nav__link-icon flaticon2-send"></i>
                                            <span class="kt-nav__link-text">Messages</span>
                                        </a>
                                    </li>
                                    <li class="kt-nav__item">
                                        <a href="#" class="kt-nav__link">
                                            <i class="kt-nav__link-icon flaticon2-pie-chart-1"></i>
                                            <span class="kt-nav__link-text">Charts</span>
                                        </a>
                                    </li>
                                    <li class="kt-nav__item">
                                        <a href="#" class="kt-nav__link">
                                            <i class="kt-nav__link-icon flaticon2-avatar"></i>
                                            <span class="kt-nav__link-text">Members</span>
                                        </a>
                                    </li>
                                    <li class="kt-nav__item">
                                        <a href="#" class="kt-nav__link">
                                            <i class="kt-nav__link-icon flaticon2-settings"></i>
                                            <span class="kt-nav__link-text">Settings</span>
                                        </a>
                                    </li>
                                </ul>			</div>
                        </div>
                    </div>
                    <div class="kt-portlet__body kt-portlet__body--fluid">
                        <div class="kt-widget20">
                            <div class="kt-widget20__content kt-portlet__space-x">
                                <span class="kt-widget20__number kt-font-brand">670+</span>
                                <span class="kt-widget20__desc">Successful transactions</span>
                            </div>
                            <div class="kt-widget20__chart" style="height:130px;">
                                <canvas id="kt_chart_bandwidth1"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end:: Widgets/Inbound Bandwidth-->		<div class="kt-space-20"></div>
                <!--begin:: Widgets/Outbound Bandwidth-->
                <div class="kt-portlet kt-portlet--fit kt-portlet--head-noborder kt-portlet--height-fluid-half">
                    <div class="kt-portlet__head kt-portlet__space-x">
                        <div class="kt-portlet__head-label">
                            <h3 class="kt-portlet__head-title">
                                Outbound Bandwidth
                            </h3>
                        </div>
                        <div class="kt-portlet__head-toolbar">
                            <a href="#" class="btn btn-label-warning btn-sm  btn-bold dropdown-toggle" data-toggle="dropdown">
                                Download
                            </a>
                            <div class="dropdown-menu dropdown-menu-fit dropdown-menu-right">
                                <ul class="kt-nav">
                                    <li class="kt-nav__item">
                                        <a href="#" class="kt-nav__link">
                                            <i class="kt-nav__link-icon flaticon2-line-chart"></i>
                                            <span class="kt-nav__link-text">Reports</span>
                                        </a>
                                    </li>
                                    <li class="kt-nav__item">
                                        <a href="#" class="kt-nav__link">
                                            <i class="kt-nav__link-icon flaticon2-send"></i>
                                            <span class="kt-nav__link-text">Messages</span>
                                        </a>
                                    </li>
                                    <li class="kt-nav__item">
                                        <a href="#" class="kt-nav__link">
                                            <i class="kt-nav__link-icon flaticon2-pie-chart-1"></i>
                                            <span class="kt-nav__link-text">Charts</span>
                                        </a>
                                    </li>
                                    <li class="kt-nav__item">
                                        <a href="#" class="kt-nav__link">
                                            <i class="kt-nav__link-icon flaticon2-avatar"></i>
                                            <span class="kt-nav__link-text">Members</span>
                                        </a>
                                    </li>
                                    <li class="kt-nav__item">
                                        <a href="#" class="kt-nav__link">
                                            <i class="kt-nav__link-icon flaticon2-settings"></i>
                                            <span class="kt-nav__link-text">Settings</span>
                                        </a>
                                    </li>
                                </ul>			</div>
                        </div>
                    </div>
                    <div class="kt-portlet__body kt-portlet__body--fluid">
                        <div class="kt-widget20">
                            <div class="kt-widget20__content kt-portlet__space-x">
                                <span class="kt-widget20__number kt-font-danger">1340+</span>
                                <span class="kt-widget20__desc">Completed orders</span>
                            </div>
                            <div class="kt-widget20__chart" style="height:130px;">
                                <canvas id="kt_chart_bandwidth2"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end:: Widgets/Outbound Bandwidth-->	</div>
            <div class="col-xl-4">
                <!--Begin::Portlet-->
                <div class="kt-portlet kt-portlet--height-fluid">
                    <div class="kt-portlet__head">
                        <div class="kt-portlet__head-label">
                            <h3 class="kt-portlet__head-title">
                                Recent Activities
                            </h3>
                        </div>
                        <div class="kt-portlet__head-toolbar">
                            <div class="dropdown dropdown-inline">
                                <button type="button" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="flaticon-more-1"></i>
                                </button>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-fit dropdown-menu-md">
                                    <!--begin::Nav-->
                                    <ul class="kt-nav">
                                        <li class="kt-nav__head">
                                            Export Options
                                            <i class="flaticon2-information" data-toggle="kt-tooltip" data-placement="right" title="Click to learn more..."></i>
                                        </li>
                                        <li class="kt-nav__separator"></li>
                                        <li class="kt-nav__item">
                                            <a href="#" class="kt-nav__link">
                                                <i class="kt-nav__link-icon flaticon2-drop"></i>
                                                <span class="kt-nav__link-text">Activity</span>
                                            </a>
                                        </li>
                                        <li class="kt-nav__item">
                                            <a href="#" class="kt-nav__link">
                                                <i class="kt-nav__link-icon flaticon2-calendar-8"></i>
                                                <span class="kt-nav__link-text">FAQ</span>
                                            </a>
                                        </li>
                                        <li class="kt-nav__item">
                                            <a href="#" class="kt-nav__link">
                                                <i class="kt-nav__link-icon flaticon2-link"></i>
                                                <span class="kt-nav__link-text">Settings</span>
                                            </a>
                                        </li>
                                        <li class="kt-nav__item">
                                            <a href="#" class="kt-nav__link">
                                                <i class="kt-nav__link-icon flaticon2-new-email"></i>
                                                <span class="kt-nav__link-text">Support</span>
                                                <span class="kt-nav__link-badge">
                <span class="kt-badge kt-badge--success">5</span>
            </span>
                                            </a>
                                        </li>
                                        <li class="kt-nav__separator"></li>
                                        <li class="kt-nav__foot">
                                            <a class="btn btn-label-danger btn-bold btn-sm" href="#">Upgrade plan</a>
                                            <a class="btn btn-clean btn-bold btn-sm" href="#" data-toggle="kt-tooltip" data-placement="right" title="Click to learn more...">Learn more</a>
                                        </li>
                                    </ul>
                                    <!--end::Nav-->				</div>
                            </div>
                        </div>
                    </div>
                    <div class="kt-portlet__body">
                        <!--Begin::Timeline 3 -->
                        <div class="kt-timeline-v2">
                            <div class="kt-timeline-v2__items  kt-padding-top-25 kt-padding-bottom-30">
                                <div class="kt-timeline-v2__item">
                                    <span class="kt-timeline-v2__item-time">10:00</span>
                                    <div class="kt-timeline-v2__item-cricle">
                                        <i class="fa fa-genderless kt-font-danger"></i>
                                    </div>
                                    <div class="kt-timeline-v2__item-text  kt-padding-top-5">
                                        Lorem ipsum dolor sit amit,consectetur eiusmdd tempor<br>
                                        incididunt ut labore et dolore magna
                                    </div>
                                </div>
                                <div class="kt-timeline-v2__item">
                                    <span class="kt-timeline-v2__item-time">12:45</span>
                                    <div class="kt-timeline-v2__item-cricle">
                                        <i class="fa fa-genderless kt-font-success"></i>
                                    </div>
                                    <div class="kt-timeline-v2__item-text kt-timeline-v2__item-text--bold">
                                        AEOL Meeting With
                                    </div>
                                    <div class="kt-list-pics kt-list-pics--sm kt-padding-l-20">
                                        <a href="#"><img src="assets/media/users/100_4.jpg" title=""></a>
                                        <a href="#"><img src="assets/media/users/100_13.jpg" title=""></a>
                                        <a href="#"><img src="assets/media/users/100_11.jpg" title=""></a>
                                        <a href="#"><img src="assets/media/users/100_14.jpg" title=""></a>
                                    </div>
                                </div>
                                <div class="kt-timeline-v2__item">
                                    <span class="kt-timeline-v2__item-time">14:00</span>
                                    <div class="kt-timeline-v2__item-cricle">
                                        <i class="fa fa-genderless kt-font-brand"></i>
                                    </div>
                                    <div class="kt-timeline-v2__item-text kt-padding-top-5">
                                        Make Deposit <a href="#" class="kt-link kt-link--brand kt-font-bolder">USD 700</a> To ESL.
                                    </div>
                                </div>
                                <div class="kt-timeline-v2__item">
                                    <span class="kt-timeline-v2__item-time">16:00</span>
                                    <div class="kt-timeline-v2__item-cricle">
                                        <i class="fa fa-genderless kt-font-warning"></i>
                                    </div>
                                    <div class="kt-timeline-v2__item-text kt-padding-top-5">
                                        Lorem ipsum dolor sit amit,consectetur eiusmdd tempor<br>
                                        incididunt ut labore et dolore magna elit enim at minim<br>
                                        veniam quis nostrud
                                    </div>
                                </div>
                                <div class="kt-timeline-v2__item">
                                    <span class="kt-timeline-v2__item-time">17:00</span>
                                    <div class="kt-timeline-v2__item-cricle">
                                        <i class="fa fa-genderless kt-font-info"></i>
                                    </div>
                                    <div class="kt-timeline-v2__item-text kt-padding-top-5">
                                        Placed a new order in <a href="#" class="kt-link kt-link--brand kt-font-bolder">SIGNATURE MOBILE</a> marketplace.
                                    </div>
                                </div>
                                <div class="kt-timeline-v2__item">
                                    <span class="kt-timeline-v2__item-time">16:00</span>
                                    <div class="kt-timeline-v2__item-cricle">
                                        <i class="fa fa-genderless kt-font-brand"></i>
                                    </div>
                                    <div class="kt-timeline-v2__item-text kt-padding-top-5">
                                        Lorem ipsum dolor sit amit,consectetur eiusmdd tempor<br>
                                        incididunt ut labore et dolore magna elit enim at minim<br>
                                        veniam quis nostrud
                                    </div>
                                </div>
                                <div class="kt-timeline-v2__item">
                                    <span class="kt-timeline-v2__item-time">17:00</span>
                                    <div class="kt-timeline-v2__item-cricle">
                                        <i class="fa fa-genderless kt-font-danger"></i>
                                    </div>
                                    <div class="kt-timeline-v2__item-text kt-padding-top-5">
                                        Received a new feedback on <a href="#" class="kt-link kt-link--brand kt-font-bolder">FinancePro App</a> product.
                                    </div>
                                </div>
                                <div class="kt-timeline-v2__item">
                                    <span class="kt-timeline-v2__item-time">15:30</span>
                                    <div class="kt-timeline-v2__item-cricle">
                                        <i class="fa fa-genderless kt-font-danger"></i>
                                    </div>
                                    <div class="kt-timeline-v2__item-text kt-padding-top-5">
                                        New notification message has been received on <a href="#" class="kt-link kt-link--brand kt-font-bolder">LoopFin Pro</a> product.
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--End::Timeline 3 -->
                    </div>
                </div>
                <!--End::Portlet-->	</div>
        </div>
        <!--End::Section-->


        <!--Begin::Section-->
        <div class="row">
            <div class="col-xl-8">
                <!--begin:: Widgets/Best Sellers-->
                <div class="kt-portlet kt-portlet--height-fluid">
                    <div class="kt-portlet__head">
                        <div class="kt-portlet__head-label">
                            <h3 class="kt-portlet__head-title">
                                Best Sellers
                            </h3>
                        </div>
                        <div class="kt-portlet__head-toolbar">
                            <ul class="nav nav-pills nav-pills-sm nav-pills-label nav-pills-bold" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#kt_widget5_tab1_content" role="tab">
                                        Latest
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#kt_widget5_tab2_content" role="tab">
                                        Month
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#kt_widget5_tab3_content" role="tab">
                                        All time
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="kt-portlet__body">
                        <div class="tab-content">
                            <div class="tab-pane active" id="kt_widget5_tab1_content" aria-expanded="true">
                                <div class="kt-widget5">
                                    <div class="kt-widget5__item">
                                        <div class="kt-widget5__content">
                                            <div class="kt-widget5__pic">
                                                <img class="kt-widget7__img" src="assets/media/products/product27.jpg" alt="">
                                            </div>
                                            <div class="kt-widget5__section">
                                                <a href="#" class="kt-widget5__title">
                                                    Great Logo Designn
                                                </a>
                                                <p class="kt-widget5__desc">
                                                    Metronic admin themes.
                                                </p>
                                                <div class="kt-widget5__info">
                                                    <span>Author:</span>
                                                    <span class="kt-font-info">Keenthemes</span>
                                                    <span>Released:</span>
                                                    <span class="kt-font-info">23.08.17</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="kt-widget5__content">
                                            <div class="kt-widget5__stats">
                                                <span class="kt-widget5__number">19,200</span>
                                                <span class="kt-widget5__sales">sales</span>
                                            </div>
                                            <div class="kt-widget5__stats">
                                                <span class="kt-widget5__number">1046</span>
                                                <span class="kt-widget5__votes">votes</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="kt-widget5__item">
                                        <div class="kt-widget5__content">
                                            <div class="kt-widget5__pic">
                                                <img class="kt-widget7__img" src="assets/media/products/product22.jpg" alt="">
                                            </div>
                                            <div class="kt-widget5__section">
                                                <a href="#" class="kt-widget5__title">
                                                    Branding Mockup
                                                </a>
                                                <p class="kt-widget5__desc">
                                                    Metronic bootstrap themes.
                                                </p>
                                                <div class="kt-widget5__info">
                                                    <span>Author:</span>
                                                    <span class="kt-font-info">Fly themes</span>
                                                    <span>Released:</span>
                                                    <span class="kt-font-info">23.08.17</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="kt-widget5__content">
                                            <div class="kt-widget5__stats">
                                                <span class="kt-widget5__number">24,583</span>
                                                <span class="kt-widget5__sales">sales</span>
                                            </div>
                                            <div class="kt-widget5__stats">
                                                <span class="kt-widget5__number">3809</span>
                                                <span class="kt-widget5__votes">votes</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="kt-widget5__item">
                                        <div class="kt-widget5__content">
                                            <div class="kt-widget5__pic">
                                                <img class="kt-widget7__img" src="assets/media/products/product15.jpg" alt="">
                                            </div>
                                            <div class="kt-widget5__section">
                                                <a href="#" class="kt-widget5__title">
                                                    Awesome Mobile App
                                                </a>
                                                <p class="kt-widget5__desc">
                                                    Metronic admin themes.Lorem Ipsum Amet
                                                </p>
                                                <div class="kt-widget5__info">
                                                    <span>Author:</span>
                                                    <span class="kt-font-info">Fly themes</span>
                                                    <span>Released:</span>
                                                    <span class="kt-font-info">23.08.17</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="kt-widget5__content">
                                            <div class="kt-widget5__stats">
                                                <span class="kt-widget5__number">210,054</span>
                                                <span class="kt-widget5__sales">sales</span>
                                            </div>
                                            <div class="kt-widget5__stats">
                                                <span class="kt-widget5__number">1103</span>
                                                <span class="kt-widget5__votes">votes</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="kt_widget5_tab2_content">
                                <div class="kt-widget5">
                                    <div class="kt-widget5__item">
                                        <div class="kt-widget5__content">
                                            <div class="kt-widget5__pic">
                                                <img class="kt-widget7__img" src="assets/media/products/product10.jpg" alt="">
                                            </div>
                                            <div class="kt-widget5__section">
                                                <a href="#" class="kt-widget5__title">
                                                    Branding Mockup
                                                </a>
                                                <p class="kt-widget5__desc">
                                                    Metronic bootstrap themes.
                                                </p>
                                                <div class="kt-widget5__info">
                                                    <span>Author:</span>
                                                    <span class="kt-font-info">Fly themes</span>
                                                    <span>Released:</span>
                                                    <span class="kt-font-info">23.08.17</span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="kt-widget5__content">
                                            <div class="kt-widget5__stats">
                                                <span class="kt-widget5__number">24,583</span>
                                                <span class="kt-widget5__sales">sales</span>
                                            </div>
                                            <div class="kt-widget5__stats">
                                                <span class="kt-widget5__number">3809</span>
                                                <span class="kt-widget5__votes">votes</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="kt-widget5__item">
                                        <div class="kt-widget5__content">
                                            <div class="kt-widget5__pic">
                                                <img class="kt-widget7__img" src="assets/media/products/product11.jpg" alt="">
                                            </div>
                                            <div class="kt-widget5__section">
                                                <a href="#" class="kt-widget5__title">
                                                    Awesome Mobile App
                                                </a>
                                                <p class="kt-widget5__desc">
                                                    Metronic admin themes.Lorem Ipsum Amet
                                                </p>
                                                <div class="kt-widget5__info">
                                                    <span>Author:</span>
                                                    <span class="kt-font-info">Fly themes</span>
                                                    <span>Released:</span>
                                                    <span class="kt-font-info">23.08.17</span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="kt-widget5__content">
                                            <div class="kt-widget5__stats">
                                                <span class="kt-widget5__number">210,054</span>
                                                <span class="kt-widget5__sales">sales</span>
                                            </div>
                                            <div class="kt-widget5__stats">
                                                <span class="kt-widget5__number">1103</span>
                                                <span class="kt-widget5__votes">votes</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="kt-widget5__item">
                                        <div class="kt-widget5__content">
                                            <div class="kt-widget5__pic">
                                                <img class="kt-widget7__img" src="assets/media/products/product6.jpg" alt="">
                                            </div>
                                            <div class="kt-widget5__section">
                                                <a href="#" class="kt-widget5__title">
                                                    Great Logo Designn
                                                </a>
                                                <p class="kt-widget5__desc">
                                                    Metronic admin themes.
                                                </p>
                                                <div class="kt-widget5__info">
                                                    <span>Author:</span>
                                                    <span class="kt-font-info">Keenthemes</span>
                                                    <span>Released:</span>
                                                    <span class="kt-font-info">23.08.17</span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="kt-widget5__content">
                                            <div class="kt-widget5__stats">
                                                <span class="kt-widget5__number">19,200</span>
                                                <span class="kt-widget5__sales">sales</span>
                                            </div>
                                            <div class="kt-widget5__stats">
                                                <span class="kt-widget5__number">1046</span>
                                                <span class="kt-widget5__votes">votes</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="kt_widget5_tab3_content">
                                <div class="kt-widget5">
                                    <div class="kt-widget5__item">
                                        <div class="kt-widget5__content">
                                            <div class="kt-widget5__pic">
                                                <img class="kt-widget7__img" src="assets/media/products/product11.jpg" alt="">
                                            </div>
                                            <div class="kt-widget5__section">
                                                <a href="#" class="kt-widget5__title">
                                                    Awesome Mobile App
                                                </a>
                                                <p class="kt-widget5__desc">
                                                    Metronic admin themes.Lorem Ipsum Amet
                                                </p>
                                                <div class="kt-widget5__info">
                                                    <span>Author:</span>
                                                    <span class="kt-font-info">Fly themes</span>
                                                    <span>Released:</span>
                                                    <span class="kt-font-info">23.08.17</span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="kt-widget5__content">
                                            <div class="kt-widget5__stats">
                                                <span class="kt-widget5__number">210,054</span>
                                                <span class="kt-widget5__sales">sales</span>
                                            </div>
                                            <div class="kt-widget5__stats">
                                                <span class="kt-widget5__number">1103</span>
                                                <span class="kt-widget5__votes">votes</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="kt-widget5__item">
                                        <div class="kt-widget5__content">
                                            <div class="kt-widget5__pic">
                                                <img class="kt-widget7__img" src="assets/media/products/product6.jpg" alt="">
                                            </div>
                                            <div class="kt-widget5__section">
                                                <a href="#" class="kt-widget5__title">
                                                    Great Logo Designn
                                                </a>
                                                <p class="kt-widget5__desc">
                                                    Metronic admin themes.
                                                </p>
                                                <div class="kt-widget5__info">
                                                    <span>Author:</span>
                                                    <span class="kt-font-info">Keenthemes</span>
                                                    <span>Released:</span>
                                                    <span class="kt-font-info">23.08.17</span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="kt-widget5__content">
                                            <div class="kt-widget5__stats">
                                                <span class="kt-widget5__number">19,200</span>
                                                <span class="kt-widget5__sales">sales</span>
                                            </div>
                                            <div class="kt-widget5__stats">
                                                <span class="kt-widget5__number">1046</span>
                                                <span class="kt-widget5__votes">votes</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="kt-widget5__item">
                                        <div class="kt-widget5__content">
                                            <div class="kt-widget5__pic">
                                                <img class="kt-widget7__img" src="assets/media/products/product10.jpg" alt="">
                                            </div>
                                            <div class="kt-widget5__section">
                                                <a href="#" class="kt-widget5__title">
                                                    Branding Mockup
                                                </a>
                                                <p class="kt-widget5__desc">
                                                    Metronic bootstrap themes.
                                                </p>
                                                <div class="kt-widget5__info">
                                                    <span>Author:</span>
                                                    <span class="kt-font-info">Fly themes</span>
                                                    <span>Released:</span>
                                                    <span class="kt-font-info">23.08.17</span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="kt-widget5__content">
                                            <div class="kt-widget5__stats">
                                                <span class="kt-widget5__number">24,583</span>
                                                <span class="kt-widget5__sales">sales</span>
                                            </div>
                                            <div class="kt-widget5__stats">
                                                <span class="kt-widget5__number">3809</span>
                                                <span class="kt-widget5__votes">votes</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end:: Widgets/Best Sellers-->


            </div>
            <div class="col-xl-4">
                <!--begin:: Widgets/New Users-->
                <div class="kt-portlet kt-portlet--tabs kt-portlet--height-fluid">
                    <div class="kt-portlet__head">
                        <div class="kt-portlet__head-label">
                            <h3 class="kt-portlet__head-title">
                                New Users
                            </h3>
                        </div>
                        <div class="kt-portlet__head-toolbar">
                            <ul class="nav nav-tabs nav-tabs-line nav-tabs-bold nav-tabs-line-brand" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#kt_widget4_tab1_content" role="tab">
                                        Today
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#kt_widget4_tab2_content" role="tab">
                                        Month
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="kt-portlet__body">
                        <div class="tab-content">
                            <div class="tab-pane active" id="kt_widget4_tab1_content">
                                <div class="kt-widget4">
                                    <div class="kt-widget4__item">
                                        <div class="kt-widget4__pic kt-widget4__pic--pic">
                                            <img src="assets/media/users/100_4.jpg" alt="">
                                        </div>
                                        <div class="kt-widget4__info">
                                            <a href="#" class="kt-widget4__username">
                                                Anna Strong
                                            </a>
                                            <p class="kt-widget4__text">
                                                Visual Designer,Google Inc
                                            </p>
                                        </div>
                                        <a href="#" class="btn btn-sm btn-label-brand btn-bold">Follow</a>
                                    </div>

                                    <div class="kt-widget4__item">
                                        <div class="kt-widget4__pic kt-widget4__pic--pic">
                                            <img src="assets/media/users/100_14.jpg" alt="">
                                        </div>
                                        <div class="kt-widget4__info">
                                            <a href="#" class="kt-widget4__username">
                                                Milano Esco
                                            </a>
                                            <p class="kt-widget4__text">
                                                Product Designer, Apple Inc
                                            </p>
                                        </div>
                                        <a href="#" class="btn btn-sm btn-label-warning btn-bold">Follow</a>
                                    </div>

                                    <div class="kt-widget4__item">
                                        <div class="kt-widget4__pic kt-widget4__pic--pic">
                                            <img src="assets/media/users/100_11.jpg" alt="">
                                        </div>
                                        <div class="kt-widget4__info">
                                            <a href="#" class="kt-widget4__username">
                                                Nick Bold
                                            </a>
                                            <p class="kt-widget4__text">
                                                Web Developer, Facebook Inc
                                            </p>
                                        </div>
                                        <a href="#" class="btn btn-sm btn-label-danger btn-bold">Follow</a>
                                    </div>

                                    <div class="kt-widget4__item">
                                        <div class="kt-widget4__pic kt-widget4__pic--pic">
                                            <img src="assets/media/users/100_1.jpg" alt="">
                                        </div>
                                        <div class="kt-widget4__info">
                                            <a href="#" class="kt-widget4__username">
                                                Wiltor Delton
                                            </a>
                                            <p class="kt-widget4__text">
                                                Project Manager, Amazon Inc
                                            </p>
                                        </div>
                                        <a href="#" class="btn btn-sm btn-label-success btn-bold">Follow</a>
                                    </div>

                                    <div class="kt-widget4__item">
                                        <div class="kt-widget4__pic kt-widget4__pic--pic">
                                            <img src="assets/media/users/100_5.jpg" alt="">
                                        </div>
                                        <div class="kt-widget4__info">
                                            <a href="#" class="kt-widget4__username">
                                                Nick Stone
                                            </a>
                                            <p class="kt-widget4__text">
                                                Visual Designer, Github Inc
                                            </p>
                                        </div>
                                        <a href="#" class="btn btn-sm btn-label-primary btn-bold">Follow</a>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane" id="kt_widget4_tab2_content">
                                <div class="kt-widget4">
                                    <div class="kt-widget4__item">
                                        <div class="kt-widget4__pic kt-widget4__pic--pic">
                                            <img src="assets/media/users/100_2.jpg" alt="">
                                        </div>
                                        <div class="kt-widget4__info">
                                            <a href="#" class="kt-widget4__username">
                                                Kristika Bold
                                            </a>
                                            <p class="kt-widget4__text">
                                                Product Designer,Apple Inc
                                            </p>
                                        </div>
                                        <a href="#" class="btn btn-sm btn-label-success">Follow</a>
                                    </div>

                                    <div class="kt-widget4__item">
                                        <div class="kt-widget4__pic kt-widget4__pic--pic">
                                            <img src="assets/media/users/100_13.jpg" alt="">
                                        </div>
                                        <div class="kt-widget4__info">
                                            <a href="#" class="kt-widget4__username">
                                                Ron Silk
                                            </a>
                                            <p class="kt-widget4__text">
                                                Release Manager, Loop Inc
                                            </p>
                                        </div>
                                        <a href="#" class="btn btn-sm btn-label-brand">Follow</a>
                                    </div>

                                    <div class="kt-widget4__item">
                                        <div class="kt-widget4__pic kt-widget4__pic--pic">
                                            <img src="assets/media/users/100_9.jpg" alt="">
                                        </div>
                                        <div class="kt-widget4__info">
                                            <a href="#" class="kt-widget4__username">
                                                Nick Bold
                                            </a>
                                            <p class="kt-widget4__text">
                                                Web Developer, Facebook Inc
                                            </p>
                                        </div>
                                        <a href="#" class="btn btn-sm btn-label-danger">Follow</a>
                                    </div>

                                    <div class="kt-widget4__item">
                                        <div class="kt-widget4__pic kt-widget4__pic--pic">
                                            <img src="assets/media/users/100_2.jpg" alt="">
                                        </div>
                                        <div class="kt-widget4__info">
                                            <a href="#" class="kt-widget4__username">
                                                Wiltor Delton
                                            </a>
                                            <p class="kt-widget4__text">
                                                Project Manager, Amazon Inc
                                            </p>
                                        </div>
                                        <a href="#" class="btn btn-sm btn-label-success">Follow</a>
                                    </div>

                                    <div class="kt-widget4__item">
                                        <div class="kt-widget4__pic kt-widget4__pic--pic">
                                            <img src="assets/media/users/100_8.jpg" alt="">
                                        </div>
                                        <div class="kt-widget4__info">
                                            <a href="#" class="kt-widget4__username">
                                                Nick Bold
                                            </a>
                                            <p class="kt-widget4__text">
                                                Web Developer, Facebook Inc
                                            </p>
                                        </div>
                                        <a href="#" class="btn btn-sm btn-label-info">Follow</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end:: Widgets/New Users-->	</div>
        </div>
        <!--End::Section-->

        <!--Begin::Section-->
        <div class="row">
            <div class="col-xl-4">
                <!--begin:: Widgets/Daily Sales-->
                <div class="kt-portlet kt-portlet--height-fluid">
                    <div class="kt-widget14">
                        <div class="kt-widget14__header kt-margin-b-30">
                            <h3 class="kt-widget14__title">
                                Daily Sales
                            </h3>
                            <span class="kt-widget14__desc">
				Check out each collumn for more details
			</span>
                        </div>
                        <div class="kt-widget14__chart" style="height:120px;">
                            <canvas  id="kt_chart_daily_sales"></canvas>
                        </div>
                    </div>
                </div>
                <!--end:: Widgets/Daily Sales-->    </div>
            <div class="col-xl-4">
                <!--begin:: Widgets/Profit Share-->
                <div class="kt-portlet kt-portlet--height-fluid">
                    <div class="kt-widget14">
                        <div class="kt-widget14__header">
                            <h3 class="kt-widget14__title">
                                Profit Share
                            </h3>
                            <span class="kt-widget14__desc">
				Profit Share between customers
			</span>
                        </div>
                        <div class="kt-widget14__content">
                            <div class="kt-widget14__chart">
                                <div class="kt-widget14__stat">45</div>
                                <canvas id="kt_chart_profit_share" style="height: 140px; width: 140px;"></canvas>
                            </div>
                            <div class="kt-widget14__legends">
                                <div class="kt-widget14__legend">
                                    <span class="kt-widget14__bullet kt-bg-success"></span>
                                    <span class="kt-widget14__stats">37% Sport Tickets</span>
                                </div>
                                <div class="kt-widget14__legend">
                                    <span class="kt-widget14__bullet kt-bg-warning"></span>
                                    <span class="kt-widget14__stats">47% Business Events</span>
                                </div>
                                <div class="kt-widget14__legend">
                                    <span class="kt-widget14__bullet kt-bg-brand"></span>
                                    <span class="kt-widget14__stats">19% Others</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end:: Widgets/Profit Share-->    </div>
            <div class="col-xl-4">
                <!--begin:: Widgets/Revenue Change-->
                <div class="kt-portlet kt-portlet--height-fluid">
                    <div class="kt-widget14">
                        <div class="kt-widget14__header">
                            <h3 class="kt-widget14__title">
                                Revenue Change
                            </h3>
                            <span class="kt-widget14__desc">
				Revenue change breakdown by cities
			</span>
                        </div>
                        <div class="kt-widget14__content">
                            <div class="kt-widget14__chart">
                                <div id="kt_chart_revenue_change" style="height: 150px; width: 150px;"></div>
                            </div>
                            <div class="kt-widget14__legends">
                                <div class="kt-widget14__legend">
                                    <span class="kt-widget14__bullet kt-bg-success"></span>
                                    <span class="kt-widget14__stats">+10% New York</span>
                                </div>
                                <div class="kt-widget14__legend">
                                    <span class="kt-widget14__bullet kt-bg-warning"></span>
                                    <span class="kt-widget14__stats">-7% London</span>
                                </div>
                                <div class="kt-widget14__legend">
                                    <span class="kt-widget14__bullet kt-bg-brand"></span>
                                    <span class="kt-widget14__stats">+20% California</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end:: Widgets/Revenue Change-->	</div>
        </div>
    </div>
    </div>
@endsection
@section('footer')
    <script src="{{asset('assets/vendors/custom/fullcalendar/fullcalendar.bundle.js')}}" type="text/javascript"></script>
    <script src="{{asset('http://maps.google.com/maps/api/js?key=AIzaSyBTGnKT7dt597vo9QgeQ7BFhvSRP4eiMSM')}}" type="text/javascript"></script>
    <script src="{{asset('assets/vendors/custom/gmaps/gmaps.js')}}" type="text/javascript"></script>
    <!--end::Page Vendors -->
    <!--begin::Page Scripts(used by this page) -->
    <script src="{{asset('assets/js/demo1/pages/dashboard.js')}}" type="text/javascript"></script>
@endsection


