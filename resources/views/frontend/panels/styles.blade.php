<link rel="preconnect" href="https://fonts.gstatic.com/" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&amp;family=Zilla+Slab:wght@400;500&amp;display=swap"
  rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Bitter:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
  rel="stylesheet"/>
<link rel="stylesheet" href="{{ asset('themes/frontend/furniture/css/bootstrap.css') }}" type="text/css" />
<link rel="stylesheet" href="{{ asset('themes/frontend/furniture/style.css') }}" type="text/css" />
<link rel="stylesheet" href="{{ asset('themes/frontend/furniture/css/dark.css') }}" type="text/css" />
<link rel="stylesheet" href="{{ asset('themes/frontend/furniture/css/font-icons.css') }}" type="text/css" />
<link rel="stylesheet" href="{{ asset('themes/frontend/furniture/css/animate.css') }}" type="text/css" />
<link rel="stylesheet" href="{{ asset('themes/frontend/furniture/css/magnific-popup.css') }}" type="text/css" />
<link rel="stylesheet" href="{{ asset('themes/frontend/furniture/css/custom.css') }}" type="text/css" />

<!-- Furniture Demo Specific Theme Stylesheet - #193532 -->
<link rel="stylesheet" href="{{ asset('themes/frontend/furniture/css/colors9bb7.css?color=193532') }}" type="text/css"/>
<!-- Furniture Demo Specific Stylesheet -->
<link rel="stylesheet" href="{{ asset('themes/frontend/furniture/demos/furniture.css') }}" type="text/css" />
<link rel="stylesheet" href="{{ asset('themes/frontend/furniture/demos/css/fonts.css') }}" type="text/css" />

<style>
  h1,
  h2,
  h3,
  h4,
  h5,
  h6,
  #logo a,
  .top-search-form input,
  .entry-link,
  .entry.entry-date-section span,
  .button.button-desc,
  .fbox-content h3,
  .tab-nav-lg li a,
  .counter,
  label,
  .widget-filter-links li a,
  .nav-tree li a,
  .wedding-head,
  .font-primary {
    font-family: "Bitter", serif !important;
  }
  .header-size-sm #header-wrap #logo img {
    height: 35px;
  }
  .sticky-header-shrink #header-wrap #logo img {
    height: 30px;
  }
</style>
{{-- <style>
  html {
    scroll-behavior: smooth;
  }

  :root {
    scroll-behavior: smooth;
  }

  :target:before {
    content: "";
    display: block;
    margin: 25px 0 0;
  }

  .breadcrumb-item+.breadcrumb-item::before {
    float: left;
    padding-right: 0.5rem;
    color: #6c757d;
    content: var(--bs-breadcrumb-divider, "/");
  }
</style> --}}

@isset($web_information->source_code->header)
  {!! $web_information->source_code->header !!}
@endisset
