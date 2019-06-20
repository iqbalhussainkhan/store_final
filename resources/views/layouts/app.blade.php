
@include('includes/header')
@include('includes/side_menu')
<body  class="kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--fixed kt-header-mobile--fixed kt-subheader--fixed
 kt-subheader--enabled kt-subheader--solid kt-aside--enabled kt-aside--fixed kt-page--loading"  >
    @include('includes.navbar')
        @yield('content')
    </body>
@include('includes/footer')
