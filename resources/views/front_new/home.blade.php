@extends('front_new.layouts.app')
@section('title')
    {!! !empty(getSEOTools()->home_title) ? getSEOTools()->home_title : __('messages.details.home') !!}
@endsection
@section('pageCss')
    <link href="{{ asset('front_web/build/scss/home.css') }}" rel="stylesheet" type="text/css">
@endsection
@section('content')
    <div class="home-page">
        <!-- start hero section -->
        <section class="hero-section ">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-8">
                        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                @foreach ($sliderPosts as $sliderPost)
                                    <div
                                        class="hero-image carousel-item @if ($loop->iteration <= 1) active @endif position-relative ">
                                        <a href="{{ route('detailPage', $sliderPost->slug) }}">

                                            @if ($sliderPost->post_types == \App\Models\Post::AUDIO_TYPE_ACTIVE)
                                                <button class="common-music-icon slider-music-icon" type="button">
                                                    <i class="icon fa-solid fa-music text-white"></i>
                                                </button>
                                                <img src="{{ $sliderPost->post_image }}" class="w-100 h-100"
                                                    alt="" />
                                            @elseif($sliderPost->post_types == \App\Models\Post::VIDEO_TYPE_ACTIVE)
                                                @php
                                                    $thumbUrl = !empty($sliderPost->postVideo) && !empty($sliderPost->postVideo->thumbnail_image_url) ? $sliderPost->postVideo->thumbnail_image_url : null;
                                                    $thumbImage = !empty($sliderPost->postVideo) && !empty($sliderPost->postVideo->uploaded_thumb) ? $sliderPost->postVideo->uploaded_thumb : asset('front_web/images/default.jpg');
                                                @endphp
                                                <button class="common-music-icon slider-music-icon" type="button">
                                                    <i class="icon fa-solid fa-play text-white"></i>
                                                </button>
                                                <img src="{{ !empty($thumbUrl) ? $thumbUrl : $thumbImage }}"
                                                    class="w-100 h-100" alt="" />
                                            @else
                                                <img src="{{ $sliderPost->post_image }}" class="w-100 h-100"
                                                    alt="" />
                                            @endif
                                        </a>
                                        <a href="{{ route('categoryPage', $sliderPost->category->slug) }}"
                                            class="tags position-absolute fw-7 {{ getColorClass($sliderPost->category->id) }}">{!! $sliderPost->category->name !!}</a>
                                        <div class="hero-content position-absolute px-40 mb-sm-4 mb-3 w-100">
                                            <h1 class="text-white pb-2"><a
                                                    href="{{ route('detailPage', $sliderPost->slug) }}"
                                                    class="text-decoration-none text-white">{!! \Illuminate\Support\Str::limit($sliderPost->title, 85, '...') !!}</a></h1>
                                            <div class="desc d-sm-flex align-items-center justify-content-between">
                                                <p class="fs-14 text-white mb-sm-0 mb-1"><a
                                                        href="{{ route('userDetails', $sliderPost->user->id) }}"
                                                        class="text-white">{{ __('messages.common.by') }}
                                                        {{ $sliderPost->user->full_name }}</a></p>
                                                <div class="desc d-flex">
                                                    <p class="fs-14 text-white mb-0">
                                                        {{ ucfirst(__('messages.common.' . strtolower($sliderPost->created_at->format('F')))) }}
                                                        {{ $sliderPost->created_at->format('d, Y') }}</p>
                                                    <span class=" text-primary px-sm-4 px-2"> | </span>
                                                    <p class="fs-14 text-white mb-0">{{ $sliderPost->comment_count }}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
                                data-bs-slide="prev">
                                <i class="icon fa-solid fa-arrow-left text-white"></i>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
                                data-bs-slide="next">
                                <i class="icon fa-solid fa-arrow-right text-white"></i>
                            </button>
                        </div>
                    </div>
                    <div class="col-lg-4 py-60 pb-4 mt-lg-0  mt-sm-5 mt-4">
                        <div class="row">
                            @foreach ($headlinePosts as $row)
                                <div class="col-sm-6 mb-4 pb-xl-1 ">
                                    <div class="card position-relative">
                                        <div class="card-img-top">
                                            <a href="{{ route('detailPage', $row->slug) }}">
                                                @if ($row->post_types == \App\Models\Post::AUDIO_TYPE_ACTIVE)
                                                    <button class="common-music-icon small-music-icon" type="button">
                                                        <i class="icon fa-solid fa-music text-white"></i>
                                                    </button>
                                                    <img src="{{ $row->post_image }}" class="w-100 h-100" alt="" />
                                                @elseif($row->post_types == \App\Models\Post::VIDEO_TYPE_ACTIVE)
                                                    @php
                                                        $thumbUrl = !empty($row->postVideo) && !empty($row->postVideo->thumbnail_image_url) ? $row->postVideo->thumbnail_image_url : null;
                                                        $thumbImage = !empty($row->postVideo) && !empty($row->postVideo->uploaded_thumb) ? $row->postVideo->uploaded_thumb : asset('front_web/images/default.jpg');
                                                    @endphp
                                                    <button class="common-music-icon small-music-icon" type="button">
                                                        <i class="icon fa-solid fa-play text-white"></i>
                                                    </button>
                                                    <img src="{{ !empty($thumbUrl) ? $thumbUrl : $thumbImage }}"
                                                        class="w-100 h-100" alt="" />
                                                @else
                                                    <img src="{{ $row->post_image }}" class="w-100 h-100" alt="" />
                                                @endif
                                            </a>
                                        </div>
                                        <a href="{{ route('categoryPage', $row->category->slug) }}"
                                            class="tags position-absolute  fw-7 {{ getColorClass($row->category->id) }}">{!! $row->category->name !!}</a>
                                        <div class="card-body">
                                            <h5 class="card-title mb-1 fs-16 text-black fw-6">
                                                <a href="{{ route('detailPage', $row->slug) }}"
                                                    class="fs-16 text-black fw-6">{!! \Illuminate\Support\Str::limit($row->title, 40, '...') !!}</a>
                                            </h5>
                                            <span
                                                class="card-text fs-12 text-gray">{{ ucfirst(__('messages.common.' . strtolower($row->created_at->format('M')))) }}
                                                {{ $row->created_at->format('d, Y') }}</span>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end hero section -->
        <!-- start sub-section -->
        <section class="sub-section">

            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-8 mt-3">
                        <!-- start what's new-section -->
                        @if (checkAdSpaced('index_top'))
                            @if (isset(getAdImageDesktop(\App\Models\AdSpaces::INDEX_TOP)->code))
                                <div class="container index-top-desktop ad-space-url-desktop">
                                    {!! getAdImageDesktop(\App\Models\AdSpaces::INDEX_TOP)->code !!}
                                </div>
                            @else
                                <div class="container index-top-desktop">
                                    <a href="{{ getAdImageDesktop(\App\Models\AdSpaces::INDEX_TOP)->ad_url }}"
                                        target="_blank">
                                        <img src="{{ asset(getAdImageDesktop(\App\Models\AdSpaces::INDEX_TOP)->ad_banner) }}"
                                            width="800" class="img-fluid">
                                    </a>
                                </div>
                            @endif
                            @if (isset(getAdImageMobile(\App\Models\AdSpaces::INDEX_TOP)->code))
                                <div class=" container index-top-mobile ad-space-url-mobile">
                                    {!! getAdImageMobile(\App\Models\AdSpaces::INDEX_TOP)->code !!}
                                </div>
                            @else
                                <div class=" container index-top-mobile">
                                    <a href="{{ getAdImageMobile(\App\Models\AdSpaces::INDEX_TOP)->ad_url }}"
                                        target="_blank">
                                        <img src="{{ asset(getAdImageMobile(\App\Models\AdSpaces::INDEX_TOP)->ad_banner) }}"
                                            width="350" class="img-fluid">
                                    </a>
                                </div>
                            @endif
                        @endif
                        {{-- * --}}
                        @if (isset($latestPosts) && !$latestPosts->isEmpty())
                            <section class="latest-news-section pt-60">
                                <div class="section-heading border-bottom-0">
                                    <div class="row align-items-center">
                                        <div class="col-sm-6 section-heading-left">
                                            <h2 class="text-black mb-0">{{ __('messages.details.latest_news') }}</h2>
                                        </div>
                                        <div class=" col-sm-6 text-end">
                                            <a href="{{ route('allPosts') }}"
                                                class="fs-14 btn fw-6">{{ __('messages.details.view_more') }}</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="latest-news-post pt-40">
                                    <div class="row">
                                        @foreach ($latestPosts as $latestPost)
                                            <div class="col-lg-6 mb-sm-5 mb-4 pb-lg-0 pb-sm-3">
                                                <div class="card position-relative">
                                                    <div class="news-post-image rounded-10">
                                                        <a href="{{ route('detailPage', $latestPost->slug) }}">

                                                            @if ($latestPost->post_types == \App\Models\Post::AUDIO_TYPE_ACTIVE)
                                                                <button class="common-music-icon all-posts-music-icon"
                                                                    type="button">
                                                                    <i class="icon fa-solid fa-music text-white "></i>
                                                                </button>
                                                                <img src="{{ $latestPost->post_image }}"
                                                                    class="w-100 h-100" alt="" />
                                                            @elseif($latestPost->post_types == \App\Models\Post::VIDEO_TYPE_ACTIVE)
                                                                @php
                                                                    $thumbUrl = !empty($latestPost->postVideo) && !empty($latestPost->postVideo->thumbnail_image_url) ? $latestPost->postVideo->thumbnail_image_url : null;
                                                                    $thumbImage = !empty($latestPost->postVideo) && !empty($latestPost->postVideo->uploaded_thumb) ? $latestPost->postVideo->uploaded_thumb : asset('front_web/images/default.jpg');
                                                                @endphp
                                                                <button class="common-music-icon all-posts-music-icon"
                                                                    type="button">
                                                                    <i class="icon fa-solid fa-play text-white "></i>
                                                                </button>
                                                                <img src="{{ !empty($thumbUrl) ? $thumbUrl : $thumbImage }}"
                                                                    class="w-100 h-100" alt="" />
                                                            @else
                                                                <img src="{{ $latestPost->post_image }}"
                                                                    class="w-100 h-100" alt="" />
                                                            @endif
                                                        </a>
                                                    </div>
                                                    <a href="{{ route('categoryPage', $latestPost->category->slug) }}"
                                                        class="tags position-absolute fw-7">{{ $latestPost->category->name }}</a>
                                                    <div class="news-post-content">
                                                        <h3 class="text-black py-2 fw-7 mb-0 ">
                                                            <a href="{{ route('detailPage', $latestPost->slug) }}"
                                                                class="text-black py-2 fw-7">{!! $latestPost->title !!}</a>
                                                        </h3>
                                                        <p class="fs-14 text-gray mb-0 pb-2">
                                                            {!! Str::limit($latestPost->description, 220) !!}
                                                        </p>
                                                        <div class="desc d-flex">

                                                            <p class="fs-14 text-black mb-0"><a
                                                                    href="{{ route('userDetails', $latestPost->user->id) }}"
                                                                    class="text-black">{{ __('messages.common.by') }}
                                                                    {{ $latestPost->user->full_name }}</a>
                                                            </p>
                                                            <span class=" text-primary  px-2"> | </span>
                                                            <p class="fs-14 text-black mb-0">
                                                                {{ ucfirst(__('messages.common.' . strtolower($latestPost->created_at->format('M')))) }}
                                                                {{ $latestPost->created_at->format('d , Y') }}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            </section>
                        @endif
                        <!-- end what's new-section -->
                        @if (checkAdSpaced('index_top'))
                            @if (isset(getAdImageDesktop(\App\Models\AdSpaces::INDEX_TOP)->code))
                                <div class="container index-top-desktop ad-space-url-desktop">
                                    {!! getAdImageDesktop(\App\Models\AdSpaces::INDEX_TOP)->code !!}
                                </div>
                            @else
                                <div class="container index-top-desktop">
                                    <a href="{{ getAdImageDesktop(\App\Models\AdSpaces::INDEX_TOP)->ad_url }}"
                                        target="_blank">
                                        <img src="{{ asset(getAdImageDesktop(\App\Models\AdSpaces::INDEX_TOP)->ad_banner) }}"
                                            width="800" class="img-fluid">
                                    </a>
                                </div>
                            @endif
                            @if (isset(getAdImageMobile(\App\Models\AdSpaces::INDEX_TOP)->code))
                                <div class=" container index-top-mobile ad-space-url-mobile">
                                    {!! getAdImageMobile(\App\Models\AdSpaces::INDEX_TOP)->code !!}
                                </div>
                            @else
                                <div class=" container index-top-mobile">
                                    <a href="{{ getAdImageMobile(\App\Models\AdSpaces::INDEX_TOP)->ad_url }}"
                                        target="_blank">
                                        <img src="{{ asset(getAdImageMobile(\App\Models\AdSpaces::INDEX_TOP)->ad_banner) }}"
                                            width="350" class="img-fluid">
                                    </a>
                                </div>
                            @endif
                        @endif
                        <!-- start technology-section -->
                        @foreach ($categories as $category)
                            @if (!$category->posts->isEmpty())
                                <section class="technology-section pt-60">
                                    <div class="section-heading border-bottom-0 container">
                                        <div class="row align-items-center">
                                            <div class="col-md-6 section-heading-left">
                                                <h2 class="text-black mb-0">{!! $category->name !!}</h2>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="technology-post pt-40 container">
                                        <div class="row">
                                            @php
                                                $range = getCategoryNumbers(range(1, $category->posts->count()));
                                            @endphp

                                            @foreach ($category->posts->where('visibility', \App\Models\Post::VISIBILITY_ACTIVE) as $categoryPost)
                                                <div
                                                    class="{{ in_array($loop->iteration, $range) ? 'col-lg-7 ' : 'col-lg-5' }} mb-4 pb-lg-0 pb-sm-3">
                                                    <div class="post-image position-relative rounded-10">
                                                        <a href="{{ route('detailPage', $categoryPost->slug) }}">
                                                            {{-- **** --}}
                                                            @if ($categoryPost->post_types == \App\Models\Post::AUDIO_TYPE_ACTIVE)
                                                                <button class="common-music-icon medium-music-icon"
                                                                    type="button">
                                                                    <i class="icon fa-solid fa-music text-white"></i>
                                                                </button>
                                                                <img src="{{ $categoryPost->post_image }}"
                                                                    class="w-100 h-100" alt="" />
                                                            @elseif($categoryPost->post_types == \App\Models\Post::VIDEO_TYPE_ACTIVE)
                                                                @php
                                                                    $thumbUrl = !empty($categoryPost->postVideo) && !empty($categoryPost->postVideo->thumbnail_image_url) ? $categoryPost->postVideo->thumbnail_image_url : null;
                                                                    $thumbImage = !empty($categoryPost->postVideo) && !empty($categoryPost->postVideo->uploaded_thumb) ? $categoryPost->postVideo->uploaded_thumb : asset('front_web/images/default.jpg');
                                                                @endphp
                                                                <button class="common-music-icon medium-music-icon"
                                                                    type="button">
                                                                    <i class="icon fa-solid fa-play text-white "></i>
                                                                </button>
                                                                <img src="{{ !empty($thumbUrl) ? $thumbUrl : $thumbImage }}"
                                                                    class="w-100 h-100" alt="" />
                                                            @else
                                                                <img src="{{ $categoryPost->post_image }}"
                                                                    class="w-100 h-100" alt="" />
                                                            @endif
                                                        </a>
                                                        <a href="{{ route('detailPage', $categoryPost->slug) }}"
                                                            class="overlay">
                                                        </a>
                                                        <div class="post-content position-absolute px-30 mb-3 pb-1">
                                                            <h3 class="text-white pb-sm-2">
                                                                <a href="{{ route('detailPage', $categoryPost->slug) }}"
                                                                    class="text-white">{!! $categoryPost->title !!}</a>
                                                            </h3>
                                                            <div
                                                                class="desc d-sm-flex align-items-center justify-content-between">
                                                                <p class="fs-12 text-white mb-sm-0 mb-1">
                                                                    <a href="{{ route('userDetails', $categoryPost->user->id) }}"
                                                                        class="text-white">{{ __('messages.common.by') }}
                                                                        {{ $categoryPost->user->full_name }}</a>
                                                                </p>
                                                                <p class="fs-12 text-white mb-0">
                                                                    {{ ucfirst(__('messages.common.' . strtolower($categoryPost['created_at']->format('M')))) }}
                                                                    {{ $categoryPost['created_at']->format('d, Y') }}</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                @if ($loop->iteration >= 4)
                                                @break
                                            @endif
                                        @endforeach
                                    </div>
                                </div>
                            </section>
                        @endif
                    @endforeach
                    <!-- end technology-section -->

                    <div class="container">
                        <div class="row">
                            <div class="col-md-8">
                                @if (checkAdSpaced('index_bottom'))
                                    @if (isset(getAdImageDesktop(\App\Models\AdSpaces::INDEX_BOTTOM)->code))
                                        <div class=" index-top-desktop ad-space-url-desktop">
                                            {!! getAdImageDesktop(\App\Models\AdSpaces::INDEX_BOTTOM)->code !!}
                                        </div>
                                    @else
                                        <div class=" index-top-desktop">

                                            <a href="{{ getAdImageDesktop(\App\Models\AdSpaces::INDEX_BOTTOM)->ad_url }}"
                                                target="_blank">
                                                <img src="{{ asset(getAdImageDesktop(\App\Models\AdSpaces::INDEX_BOTTOM)->ad_banner) }}"
                                                    width="800" class="img-fluid">
                                            </a>
                                        </div>
                                    @endif
                                    @if (isset(getAdImageMobile(\App\Models\AdSpaces::INDEX_BOTTOM)->code))
                                        <div class=" container index-top-mobile ad-space-url-mobile">
                                            {!! getAdImageMobile(\App\Models\AdSpaces::INDEX_BOTTOM)->code !!}
                                        </div>
                                    @else
                                        <div class=" container index-top-mobile">
                                            <a href="{{ getAdImageMobile(\App\Models\AdSpaces::INDEX_BOTTOM)->ad_url }}"
                                                target="_blank">
                                                <img src="{{ asset(getAdImageMobile(\App\Models\AdSpaces::INDEX_BOTTOM)->ad_banner) }}"
                                                    width="350" class="img-fluid">
                                            </a>
                                        </div>
                                    @endif
                                @endif
                            </div>
                            <div class="col-lg-4">
                                @include('front_new.layouts.side-menu')
                            </div>
                        </div>
                    </div>

                    {{-- ** --}}


                </div>
            </div>
        </div>
    </section>
    {{-- ** --}}
</div>
@endsection
@section('script')
{{--    <script src="{{ mix('assets/js/front/home.js') }}"></script> --}}
@endsection
