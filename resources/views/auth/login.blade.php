
<!DOCTYPE html>

<html lang="en" >

<head>
    <meta charset="utf-8"/>

    <title>ABC | Store</title>
    <meta name="description" content="Login page example">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!--begin::Fonts -->
    <script src="{{asset('fonts/webfont.js')}}"></script>
    <script>
        WebFont.load({
            google: {"families":["Poppins:300,400,500,600,700","Roboto:300,400,500,600,700"]},
            active: function() {
                sessionStorage.fonts = true;
            }
        });
    </script>
    <!--end::Fonts -->



    <!--begin::Page Custom Styles(used by this page) -->
    <link href="{{asset('pages_assets/css/demo1/pages/general/login/login-4.css')}}" rel="stylesheet" type="text/css" />
    <!--end::Page Custom Styles -->

    <!--begin::Global Theme Styles(used by all pages) -->
    <link href="{{asset('assets/vendors/global/vendors.bundle.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('assets/css/demo1/style.bundle.css')}}" rel="stylesheet" type="text/css" />
    <!--end::Global Theme Styles -->

    <!--begin::Layout Skins(used by all pages) -->

    <link href="{{asset('assets/css/demo1/skins/header/base/light.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('assets/css/demo1/skins/header/menu/light.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('assets/css/demo1/skins/brand/dark.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{('assets/css/demo1/skins/aside/dark.css')}}" rel="stylesheet" type="text/css" />        <!--end::Layout Skins -->

    <link rel="shortcut icon" href="{{('assets/media/logos/favicon.ico')}}" />
</head>
<!-- end::Head -->

<!-- begin::Body -->
<body  class="kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--fixed kt-header-mobile--fixed kt-subheader--fixed kt-subheader--enabled kt-subheader--solid kt-aside--enabled kt-aside--fixed kt-page--loading"  >


<!-- begin:: Page -->
<div class="kt-grid kt-grid--ver kt-grid--root">
    <div class="kt-grid kt-grid--hor kt-grid--root  kt-login kt-login--v4 kt-login--signin" id="kt_login">
        <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" style="background-image: url({{asset('pages_assets/media/bg/bg-2.jpg')}});">
            <div class="kt-grid__item kt-grid__item--fluid kt-login__wrapper">
                <div class="kt-login__container">
                    <div class="kt-login__logo">
                        <a href="#">
                            <img src="{{'pages_assets/media/logos/logo-5.png'}}">
                        </a>
                    </div>

                    <div class="kt-login__signin">
                        <div class="kt-login__head">
                            <h3 class="kt-login__title">Sign In To ABC Store</h3>
                        </div>
                        <form class="kt-form" method="POST" action="{{ route('login') }}">
                            @csrf
                            <input id="email" type="text" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}"  required placeholder="Email">
                            @if ($errors->has('email'))
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                            @endif
                            <div class="input-group">
                                <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" placeholder="Password" required ">

                                @if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                            <div class="row kt-login__extra">
                                <div class="col">
                                    <label class="kt-checkbox">

                                        <input type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                                        <label class="form-check-label" for="remember">
                                            {{ __('Remember Me') }}
                                        </label>
                                        <span></span>
                                    </label>

                                </div>
                                {{--<div class="col kt-align-right">--}}
                                {{--<a href="javascript:;" id="kt_login_forgot" class="kt-login__link">Forget Password ?</a>--}}
                                {{--</div>--}}
                            </div>
                            <div class="kt-login__actions">
                                {{--<button type="submit" class="btn btn-login btn-success btn-float" style="position: absolute;bottom: -20px;"><i class="notika-icon notika-right-arrow right-arrow-ant"></i></button>--}}
                                <button id="kt_login_signin_submit" class="btn btn-brand btn-pill kt-login__btn-primary" type="submit">Sign In</button>
                            </div>
                        </form>
                    </div>

                    {{--</div>--}}
                    {{--<div class="kt-login__account">--}}
                    {{--<span class="kt-login__account-msg">--}}
                    {{--Don't have an account yet ?--}}
                    {{--</span>--}}
                    {{--&nbsp;&nbsp;--}}
                    {{--<a href="javascript:;" id="kt_login_signup" class="kt-login__account-link">Sign Up!</a>--}}
                    {{--</div>--}}
                </div>
            </div>
        </div>
    </div>
</div>

<!-- end:: Page -->


<!-- begin::Global Config(global config for global JS sciprts) -->
<script>
    var KTAppOptions = {"colors":{"state":{"brand":"#5d78ff","dark":"#282a3c","light":"#ffffff","primary":"#5867dd","success":"#34bfa3","info":"#36a3f7","warning":"#ffb822","danger":"#fd3995"},"base":{"label":["#c5cbe3","#a1a8c3","#3d4465","#3e4466"],"shape":["#f0f3ff","#d9dffa","#afb4d4","#646c9a"]}}};
</script>
<!-- end::Global Config -->

<!--begin::Global Theme Bundle(used by all pages) -->
<script src="{{asset('assets/vendors/global/vendors.bundle.js')}}" type="text/javascript"></script>
<script src="{{asset('assets/js/demo1/scripts.bundle.js')}}" type="text/javascript"></script>
<!--end::Global Theme Bundle -->




<!--begin::Page Scripts(used by this page) -->
<script src="{{asset('assets/js/demo1/pages/login/login-general.js')}}" type="text/javascript"></script>
<!--end::Page Scripts -->
</body>
</html>
