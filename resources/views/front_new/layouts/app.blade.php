<!DOCTYPE html>
<html lang="en">
@php
    $settings = getSettingValue();
@endphp

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    {{--    @if (!empty(getSEOTools()->keyword)) --}}
    <meta name="keywords" content="@yield('meta_tags'),{{ !empty(getSEOTools()) ? getSEOTools()->keyword : '' }}">
    {{--    @endif --}}
    {{--    @if (!empty(getSEOTools()->site_description)) --}}
    <meta name="description"
        content="@if (View::hasSection('meta_description')) @yield('meta_description')
        @else{{ !empty(getSEOTools()) ? getSEOTools()->site_description : '' }} @endif">
    {{--    @endif --}}

    <meta http-equiv="content-language" content="{{ getFrontSelectLanguageName() ?? 'en' }}">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta property="og:image"
        content="@if (View::hasSection('meta_image')) @yield('meta_image')@else{{ $settings['logo'] }} @endif" />
    <title>@yield('title') </title>

    <link rel="shortcut icon" type="image/x-icon" href="{{ $settings['favicon'] }}">
    <link href="{{ mix('css/front-third-party.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ mix('css/front-pages.css') }}" rel="stylesheet" type="text/css">

    @yield('pageCss')
    <style>
        /* bground {
          background-color:  #fe127e !important;
        } */


        /* //navbar customization */
        header .nav .nav-item .nav-link {
            padding: 25px 20px 25px 0 !important;
            color: #8a8f95;
        }
    </style>


    {{--        <link rel="stylesheet" href="{{ asset('front_web/css/all.min.css') }}" /> --}}
    {{--    <link rel="stylesheet" type="text/css" href="{{asset('front_web/scss/bootstrap.css')}}"> --}}
    {{--    <link rel="stylesheet" type="text/css" href="{{asset('front_web/css/toastr.css')}}"> --}}
    {{--    <link href="{{asset('front_web/css/slick.css')}}" rel="stylesheet" type="text/css"> --}}
    {{--    <link href="{{asset('front_web/css/slick-theme.css')}}" rel="stylesheet" type="text/css"> --}}
    {{--    <link href="{{asset('front/scss/layout.css')}}" rel="stylesheet" type="text/css"> --}}
    {{--    <link href="{{asset('front_web/css/lightbox.css')}}" rel="stylesheet" type="text/css" > --}}
    {{--    <link href="{{asset('front/scss/dark-mode.css')}}" rel="stylesheet" type="text/css"> --}}
    {{--    <link href="{{asset('front/scss/custom.css')}}" rel="stylesheet" type="text/css"> --}}
    {{--    @yield('pageCss') --}}
    @livewireStyles
    {!! reCaptcha()->renderJs() !!}

    {{--    @livewireScripts --}}
    <script src="{{ asset('vendor/livewire/livewire.js') }}"></script>
    @include('livewire.livewire-turbo')

    @php
        $langSession = Session::get('frontLanguageChange');
        $frontLanguage = !isset($langSession) ? getSettingValue()['front_language'] : $langSession;
    @endphp

    <script src="https://cdn.jsdelivr.net/gh/livewire/turbolinks@v0.1.x/dist/livewire-turbolinks.js"
        data-turbolinks-eval="false" data-turbo-eval="false"></script>
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <script src="{{ mix('assets/js/front-third-party.js') }}"></script>
    @routes
    <script src="{{ asset('messages.js') }}"></script>
    <script data-turbo-eval="false">
        let userProfile = '{{ asset('images/avatar.png') }}'
        let siteKey = "{{ $settings['site_key'] }}"
        let frontLanguage = "{{ App\Models\Language::find($frontLanguage)->iso_code }}"

        Lang.setLocale(frontLanguage)
    </script>
    <script src="{{ mix('assets/js/front-pages.js') }}"></script>
    <script>
        {!! !empty(getSEOTools()->google_analytics) ? getSEOTools()->google_analytics : '' !!}
    </script>
</head>

<body class="dark-mode">
    @include('front_new.layouts.header')
    <div>
        @yield('content')
    </div>

    <!-- start footer section -->
    @include('front_new.layouts.footer')
    <!-- end footer section -->
    @if ($settings['show_cookie'])
        @include('cookie-consent::index')
    @endif
    <!-- start dark-mode-section -->
    <div class="theme-switch-box-wrap">
        <div class="theme-switch-box">
            <span class="theme-status"><i class="fa-solid fa-sun"></i></span>
            <label class="switch-label" for="themeSwitchCheckbox">
                <input class="input" type="checkbox" name="themeSwitchCheckbox" id="themeSwitchCheckbox">
                <span class="switch" onclick="myFunction()"></span>
            </label>
            <span class="theme-status"><i class="fas fa-moon"></i></span>
        </div>
    </div>
    <!-- end dark-mode-section -->
</body>

</html>
