
    <div class="kt-footer kt-grid__item kt-grid kt-grid--desktop kt-grid--ver-desktop" id="kt_footer">

        <div class="kt-footer__menu">
            <a href="#" target="_blank" class="kt-footer__menu-link kt-link">About</a>
            <a href="#" target="_blank" class="kt-footer__menu-link kt-link">Team</a>
            <a href="#" target="_blank" class="kt-footer__menu-link kt-link">Contact</a>
        </div>
    </div>
</div>

<!-- begin::Global Config(global config for global JS sciprts) -->
<script>
    var KTAppOptions = {"colors":{"state":{"brand":"#5d78ff","dark":"#282a3c","light":"#ffffff","primary":"#5867dd","success":"#34bfa3","info":"#36a3f7","warning":"#ffb822","danger":"#fd3995"},
        "base":{"label":["#c5cbe3","#a1a8c3","#3d4465","#3e4466"],"shape":["#f0f3ff","#d9dffa","#afb4d4","#646c9a"]}}};
</script>
<!-- end::Global Config -->

<!--begin::Global Theme Bundle(used by all pages) -->
<script src="{{asset('assets/vendors/global/vendors.bundle.js')}}" type="text/javascript"></script>
<script src="{{asset('assets/js/demo1/scripts.bundle.js')}}" type="text/javascript"></script>

@yield('footer')

</html>