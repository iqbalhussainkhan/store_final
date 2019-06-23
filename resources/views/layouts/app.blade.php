
@include('includes/header')
@include('includes/side_menu')
<body  class="kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--fixed kt-header-mobile--fixed kt-subheader--fixed
 kt-subheader--enabled kt-subheader--solid kt-aside--enabled kt-aside--fixed kt-page--loading"  >
    @include('includes.navbar')



    @include('helpers')
    @if(Session('success'))
        <script>showToaster('success' , '{{Session('success')}}')</script>
        @php
            Session::forget('success')
        @endphp
    @endif
    @if(count($errors) > 0)
        @foreach($errors->all() as $error)
            <script>showToaster('error' , '{{$error}}')</script>
        @endforeach
    @php
        Session::forget('error')
    @endphp
    @endif
        @yield('content')
    </body>
@include('includes/footer')
