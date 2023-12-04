

<link rel="stylesheet" type="text/css" href="" />
@if (checkAdSpaced('header'))
    @if (isset(getAdImageDesktop(\App\Models\AdSpaces::HEADER)->code))
        <div class=" container index-top-desktop ad-space-url-desktop-header">
            {!! getAdImageDesktop(\App\Models\AdSpaces::HEADER)->code !!}
        </div>
    @else
        <div class="container index-top-desktop">
            <a href="{{ getAdImageDesktop(\App\Models\AdSpaces::HEADER)->ad_url }}" target="_blank">
                <img src="{{ asset(getAdImageDesktop(\App\Models\AdSpaces::HEADER)->ad_banner) }}"
                     width="100%" height="250">
            </a>
        </div>
    @endif
@endif

<!--start top-bar-section -->
<section class="top-bar-section py-lg-2 py-3 top-bar">
    <div class="container">
        <div class="row align-items-center justify-content-between">
            <div class="col-lg-3 col-sm-3 col-3 ">
                <a href="/" class="d-block">
                    <img src="{{ $settings['logo'] }}" alt="" class="img-fluid w-100 h-100" />
                </a>
            </div>
            <div class="col-xl-9 col-md-8 col-9 ">
                <div class="row align-items-center justify-content-end">

                    <div class="col-xxl-3 col-lg-4 col-sm-6  br-gray  text-center  pe-xl-4 pe-lg-4 ">
                        <a href="{{ route('group') }}" class="fs-14 text-black fw-6 login-btn d-none d-sm-block"
                            data-turbo="false">{{ __('auth.group') }}</a>
                    </div>
                    <div class="col-xl-3 col-lg-4 br-gray  text-center  pe-xl-4 pe-lg-4 ">
                        <a href="{{ route('forum') }}" class="fs-14 text-black fw-6 login-btn d-none d-sm-block"
                            data-turbo="false">{{ __('auth.forum') }}</a>
                    </div>
                    <div class="col-xl-2 col-lg-4 br-gray py-1 d-lg-block d-none">
                        <div class="dropdown header-icon d-lg-flex  justify-content-end d-none position-relative">
                            <button class="dropdown-toggle border-0 bg-transparent position-relative me-4"
                                type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                <a href="javascript:void(0)"><i
                                        class="fa-solid text-black fa-magnifying-glass fs-20 "></i></a>
                            </button>
                            <div class="dropdown-menu">
                                <form action="{{ route('allPosts') }}" class="form search-form-box search-input">
                                    <div class="form-group border-0 search-input">
                                        <input type="text" name="search" id="search"
                                            placeholder="{{ __('messages.search') }}"
                                            class="form-control bg-light rt-search-control custom-input-control search-input mb-0"
                                            value="">
                                        <button type="submit" class="search-submit custom-submit search-input">
                                            <i class="fas fa-search"></i>
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                    <div
                        class="col-xl-4 col-lg-4 col-sm-6  d-flex flex-wrap justify-content-sm-between justify-content-end align-items-center">
                        @if (getLogInUser())
                            <div class="language-dropdown ms-2 d-none d-sm-block">
                                <a class="nav-link p-0 fs-14 pe-3" href="javascript:void(0)" id="dropdownMenuButton1">
                                    {{ getLogInUser()->last_name }}
                                    <i class="fa-solid fa-angle-down icon fs-12"></i>
                                </a>
                                <ul class="nav submenu language-menu" aria-labelledby="dropdownMenuButton1">
                                    <li class="nav-item languageSelection">
                                        @if (Auth::user()->hasRole('user'))
                                            <a class="nav-link fs-14 d-flex align-items-center" data-turbo="false"
                                                href="{{ route('user.dashboard') }}">
                                                {{ __('messages.details.admin_panel') }}
                                            </a>
                                        @endif
                                        @if (!Auth::user()->hasRole('user'))
                                            <a class="nav-link fs-14 d-flex align-items-center" data-turbo="false"
                                                href="{{ route('admin.dashboard') }}">
                                                {{ __('messages.details.admin_panel') }}
                                            </a>
                                        @endif
                                    </li>
                                    <li class="nav-item languageSelection">
                                        <form id="logout-form" action="{{ url('/logout') }}" method="post">
                                            @csrf
                                        </form>
                                        <a href="{{ url('logout') }}"
                                            onclick="event.preventDefault();
                                        localStorage.clear();  document.getElementById('logout-form').submit();"
                                            class="nav-link fs-14 d-flex align-items-center">
                                            {{ __('messages.details.logout') }}
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        @else
                            <div class="d-flex">
                                <a href="{{ route('login') }}"
                                    class="fs-14 text-black fw-6  login-btn d-none d-sm-block" {{-- data-turbo="false">Đăng nhập</a> --}}
                                    data-turbo="false">{{ __('messages.common.login') }}</a>
                                <samp class="text-secondary">/</samp>
                                <a href="{{ route('register') }}"
                                    class="fs-14 text-black fw-6 login-btn d-none d-sm-block" {{-- data-turbo="false">Đăng ký</a> --}}
                                    data-turbo="false">{{ __('auth.register') }}</a>
                            </div>
                        @endif
                        
                        <div class="language-dropdown pe-sm-0 pe-2">
                            <ul class="mb-0 ps-0">
                                <li class="nav-item">
                                    <a class="nav-link fs-14 p-0 " href="javascript:void(0)">
                                        {{ getFrontSelectLanguageName() }} <i
                                            class="fa-solid fa-angle-down icon fs-12"></i></a>
                                    <ul class="nav submenu language-menu">
                                        @foreach (getFrontLanguage() as $key => $language)
                                            <li class="nav-item languageSelection" data-prefix-value="ar">
                                                <a href="javascript:void(0)"
                                                    class="nav-link fs-14 d-flex align-items-center selectLanguage
                                               @if (getFrontSelectLanguageName() == $language) active @endif"
                                                    data-id="{{ $key }}">
                                                    {{ $language }}
                                                </a>
                                            </li>
                                        @endforeach
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        
                        <div class="offcanvas-toggle d-lg-none d-block">

                            <a href="#" data-bs-toggle="offcanvas" data-bs-target="#offcanvasToggle"
                                aria-controls="offcanvasToggle">
                                <i class="fa-solid fa-bars "></i>
                            </a>
                            <div class="offcanvas-wrapper offcanvas-wrapper-start" tabindex="-1" id="offcanvasToggle"
                                aria-labelledby="offcanvasToggleLabel">
                                <div class="offcanvas-content m-0">
                                    <div class="text-end">
                                        <a href="#" data-bs-toggle="offcanvas"
                                            data-bs-target="#offcanvasToggle" aria-controls="offcanvasToggle">
                                            <i class="fa fa-close text-black fs-5 m-2 me-3"></i>
                                        </a>
                                    </div>
                                    <div class="set">
                                        <a href="/" class="fs-14 fw-6 {{ Request::is('/') ? 'active' : '' }}">
                                            {{ __('messages.home') }}
                                        </a>
                                    </div>
                                    @php
                                        $nav = getHeaderElement();
                                    @endphp
                                    @foreach ($nav['navigations'] as $key => $navigation)
                                        @if ($navigation['navigationable']['lang_id'] == getFrontSelectLanguage())
                                            @php
                                                $isSubNav = count($nav['navigationsTakeData'][$navigation->id]) > 0;
                                                $subNavLangs = $nav['navigationsTakeData'][$navigation->id]; 
                                                $menuName = $navigation->navigationable->name ? $navigation->navigationable->name : $navigation->navigationable->title;
                                                $langId = false;
                                                foreach ($subNavLangs as $subNavLang) {
                                                    if ($langId) {
                                                        continue;
                                                    }
                                                    if ($subNavLang['navigationable_type'] == \App\Models\SubCategory::class) {
                                                        $langId = $subNavLang
                                                            ->navigationable()
                                                            ->where('lang_id', getFrontSelectLanguage())
                                                            ->exists();
                                                    }
                                                }
                                            @endphp
                                            <div class="set">
                                                <a href="{{ route('categoryPage', ['category' => $navigation->navigationable->slug]) }}"
                                                    class="fs-14 fw-6">
                                                    {!! $navigation->navigationable->name ? $navigation->navigationable->name : $navigation->navigationable->title !!}
                                                </a>
                                                @if ($langId && $isSubNav)
                                                    <a href="#" class="p-0" data-turbo="false"><i
                                                            class="fa fa-plus"></i></a>
                                                @endif
                                                @if ($langId)
                                                    @if ($isSubNav)
                                                        <div class="content">
                                                            @foreach ($nav['navigationsTakeData'] as $key => $navSub)
                                                                @if ($key == $navigation->id)
                                                                    @foreach ($navSub as $sub)
                                                                        <li><a class="fs-14 fw-6"
                                                                                @if ($sub->navigationable->link !== null) href="{{ getNavUrl($sub->navigationable->link) }}"
                                                                               @else
                                                                               href="{{ route('categoryPage', ['category' => $navigation->navigationable->slug, 'slug' => $sub->navigationable->slug]) }}" @endif>
                                                                                {!! $sub->navigationable->name ? $sub->navigationable->name : $sub->navigationable->title !!}</a>
                                                                        </li>
                                                                    @endforeach
                                                                @endif
                                                            @endforeach
                                                        </div>
                                                    @endif
                                                @endif
                                            </div>
                                        @endif
                                           
                                    @endforeach
                                    
                                    <div class="set">
                                        <a href="{{ route('galleryPage') }}"
                                            class="fs-14 fw-6 {{ Request::is('g') || Request::is('g/*') ? 'active' : '' }}">
                                            {{ __('messages.details.gallery') }}
                                        </a>
                                    </div>
                                    
                                    @if (getLogInUser())
                                        <div class="set">
                                            <a href="javascript:void(0)" class="fs-14 fw-6">
                                                {{ getLogInUser()->last_name }}
                                            </a>
                                            <a href="#" class="p-0" data-turbo="false"><i class="fa fa-plus"></i></a>
                                            <div class="content">
                                                <li>
                                                    <a href="{{ route('admin.dashboard') }}" class="fs-14 fw-6"
                                                        data-turbo="false">
                                                        {{ __('messages.details.admin_panel') }}
                                                    </a>
                                                </li>
                                                <li>
                                                    <form id="logout-form" action="{{ url('/logout') }}"
                                                        method="post">
                                                        @csrf
                                                    </form>
                                                    <a href="{{ url('logout') }}" class="fs-14 fw-6"
                                                        onclick="event.preventDefault();
                                        localStorage.clear();  document.getElementById('logout-form').submit();">
                                                        {{ __('messages.details.logout') }}
                                                    </a>
                                                </li>
                                            </div>
                                        </div>
                                    @else
                                        <div class="set">
                                            <a href="{{ route('login') }}"
                                                class="fs-14 fw-6 {{ 'Contact' == ucfirst(last(request()->segments())) ? 'active' : '' }}"
                                                data-turbo="false">
                                                {{ __('messages.common.login') }}
                                            </a>
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- start header section -->
<header class="bg-light d-lg-block d-none header">
    <div class="container">
        <div class="row align-items-center justify-content-between">
            <div class="col-lg-12 col-11">
                <nav>
                    <ul class="nav justify-content-between">
                        <li class="nav-item">
                            <a class="nav-link fs-14 fw-6 {{ Request::is('/') ? 'active' : '' }}" aria-current="page"
                                href="/">
                                {{ __('messages.home') }}</a>
                        </li>
                        @php
                            $nav = getNavigationDetails();
                        @endphp
                        @if ($nav['navigationsCount'] >= 0 && $nav['navigationsCount'] <= 10)
                            @foreach ($nav['navigations'] as $key => $navigation)
                                @if ($navigation['navigationable']['lang_id'] == getFrontSelectLanguage())
                                    @php
                                        $isSubNav = count($nav['navigationsTakeData'][$navigation->id]) > 0;
                                        $subNavLangs = $nav['navigationsTakeData'][$navigation->id];
                                        $menuName = $navigation->navigationable->name ? $navigation->navigationable->name : $navigation->navigationable->title;
                                        $langId = false;
                                        foreach ($subNavLangs as $subNavLang) {
                                            if ($langId) {
                                                continue;
                                            }
                                            if ($subNavLang['navigationable_type'] == \App\Models\SubCategory::class) {
                                                $langId = $subNavLang
                                                    ->navigationable()
                                                    ->where('lang_id', getFrontSelectLanguage())
                                                    ->exists();
                                            }
                                        }
                                    @endphp
                                    <li class="nav-item dropdown">
                                        <a class="nav-link  fs-14 fw-6 {{ $menuName == ucfirst(last(request()->segments())) ? 'active' : '' }}"
                                            aria-current="page"
                                            @if ($navigation->navigationable->link !== null) href="{{ getNavUrl($navigation->navigationable->link) }}"
                                           @else
                                           href="{{ route('categoryPage', $navigation->navigationable->slug) }}" @endif>{!! $navigation->navigationable->name ? $navigation->navigationable->name : $navigation->navigationable->title !!}
                                            @if ($langId && $isSubNav)
                                                <i class="fa-solid fa-angle-down icon ms-1 fs-12"></i>
                                            @endif
                                        </a>
                                        @if ($langId)
                                            @if ($isSubNav)
                                                <ul class="dropdown-nav ps-0">
                                                    @php
                                                        $path = basename(Request::path());
                                                    @endphp
                                                    @foreach ($nav['navigationsTakeData'] as $key => $navSub)
                                                        @if ($key == $navigation->id)
                                                            @foreach ($navSub as $sub)
                                                                @if ($sub->navigationable_type == \App\Models\SubCategory::class)
                                                                    @if ($sub->navigationable()->where('lang_id', getFrontSelectLanguage())->exists())
                                                                        <li>
                                                                            <a class="fs-14 fw-6 {{ !empty($path) && $path == $sub->navigationable->slug ? 'active' : '' }}"
                                                                                @if ($sub->navigationable->link !== null) href="{{ getNavUrl($sub->navigationable->link) }}"
                                                                           @else
                                                                               href="{{ route('categoryPage', ['category' => $navigation->navigationable->slug, 'slug' => $sub->navigationable->slug]) }}" @endif>{!! $sub->navigationable->name ? $sub->navigationable->name : $sub->navigationable->title !!}
                                                                            </a>
                                                                        </li>
                                                                    @endif
                                                                @else
                                                                    <li>
                                                                        <a class="fs-14 fw-6 {{ !empty($path) && $path == $sub->navigationable->slug ? 'active' : '' }}"
                                                                            @if ($sub->navigationable->link !== null) href="{{ getNavUrl($sub->navigationable->link) }}"
                                                                           @else
                                                                           href="{{ route('categoryPage', ['category' => $navigation->navigationable->slug, 'slug' => $sub->navigationable->slug]) }}" @endif>{!! $sub->navigationable->name ? $sub->navigationable->name : $sub->navigationable->title !!}
                                                                        </a>
                                                                    </li>
                                                                @endif
                                                            @endforeach
                                                        @endif
                                                    @endforeach
                                                </ul>
                                            @endif
                                        @endif
                                    </li>
                                @endif
                            @endforeach
                        @endif
                       
                        
                        @if ($nav['navigationsCount'] >= 6)
                            <li class="nav-item dropdown">
                                <a class="nav-link" aria-current="page" href="#">
                                    <i class="fa-solid fa-ellipsis "></i>
                                </a>
                                <ul class="dropdown-nav ps-0">
                                    @foreach ($nav['navigationsSkipData'] as $key => $navigation)
                                        @if ($navigation['navigationable']['lang_id'] == getFrontSelectLanguage())
                                            @php
                                                $isSubNav = count($nav['navigationsSkipItem'][$navigation->id]) > 0;
                                                $subNavLangs = $nav['navigationsSkipItem'][$navigation->id];
                                                $menuName = $navigation->navigationable->name ? $navigation->navigationable->name : $navigation->navigationable->title;
                                                $langId = false;
                                                foreach ($subNavLangs as $subNavLang) {
                                                    if ($langId) {
                                                        continue;
                                                    }
                                                    if ($subNavLang['navigationable_type'] == \App\Models\SubCategory::class) {
                                                        $langId = $subNavLang
                                                            ->navigationable()
                                                            ->where('lang_id', getFrontSelectLanguage())
                                                            ->exists();
                                                    }
                                                }
                                            @endphp
                                            <li class="dropdown-sub-nav">
                                                <a href="{{ route('categoryPage', $navigation->navigationable->slug) }}"
                                                    class="fs-14 fw-6 d-flex justify-content-between {{ $menuName == ucfirst(last(request()->segments())) ? 'active' : '' }}">
                                                    {!! $navigation->navigationable->name ? $navigation->navigationable->name : $navigation->navigationable->title !!}
                                                    @if ($langId  && $isSubNav)
                                                        <i class="fa-solid fa-angle-right fs-12 "></i>
                                                    @endif
                                                </a>
                                                @if ($langId)
                                                    @if ($isSubNav)
                                                        <ul class="dropdown-sub-list ps-0">
                                                            @foreach ($nav['navigationsSkipItem'] as $key => $navSub)
                                                                @if ($key == $navigation->id)
                                                                    @foreach ($navSub as $sub)
                                                                        @if ($sub->navigationable_type == \App\Models\SubCategory::class)
                                                                            @if ($sub->navigationable()->where('lang_id', getFrontSelectLanguage())->exists())
                                                                                <li>
                                                                                    <a class="fs-14 fw-6"
                                                                                        @if ($sub->navigationable->link !== null) href="{{ getNavUrl($sub->navigationable->link) }}"
                                                                                       @else
                                                                                       href="{{ route('categoryPage', ['category' => $navigation->navigationable->slug, 'slug' => $sub->navigationable->slug]) }}" @endif>{!! $sub->navigationable->name ? $sub->navigationable->name : $sub->navigationable->title !!}
                                                                                    </a>
                                                                                </li>
                                                                            @endif
                                                                        @else
                                                                            <li>
                                                                                <a class="fs-14 fw-6"
                                                                                    @if ($sub->navigationable->link !== null) href="{{ getNavUrl($sub->navigationable->link) }}"
                                                                                   @else
                                                                                   href="{{ route('categoryPage', ['category' => $navigation->navigationable->slug, 'slug' => $sub->navigationable->slug]) }}" @endif>{!! $sub->navigationable->name ? $sub->navigationable->name : $sub->navigationable->title !!}
                                                                                </a>
                                                                            </li>
                                                                        @endif
                                                                    @endforeach
                                                                @endif
                                                            @endforeach
                                                        </ul>
                                                    @endif
                                                @endif
                                            </li>
                                        @endif
                                    @endforeach
                                </ul>
                            </li>
                        @endif
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- end header section -->
