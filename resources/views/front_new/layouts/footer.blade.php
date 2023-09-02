<footer class="footer pt-60 bg-light">

    <div class="container">
        <div class="row justify-content-between">
            <div class="col-lg-3 col-sm-7 ">
                <div>
                    <a href="{{ route('front.home') }}">
                        <img src="{{$settings['logo']}}" alt="" class="img-fluid w-100 h-100" />
                    </a>
                </div>
                <p class="d-block text-gray my-4 fs-14 text-gray">
                    {!! $settings['about_text'] !!}
                </p>
            </div>
            <div class="col-lg-3 col-sm-4 mb-3  ">
                    <div class="contact-desc">
                        <h3 class="text-black fw-7 mb-4">{{__('messages.setting.contact_information')}}</h3>
                        <div class="desc d-flex  mb-4">
                            <div class="icon  d-flex justify-content-center align-items-center">
                                <i class="fa-solid fa-location-dot  text-black"></i>
                            </div>
                            <a class="fs-14 text-black mb-0  ps-4">{!! $settings['contact_address'] !!}</a>
                        </div>
                        <div class="desc d-flex align-items-sm-center mb-4">
                            <div class="icon d-flex justify-content-center align-items-center">
                                <i class="fa-solid fa-envelope  text-black"></i>
                            </div>
                            <a href="{{"mailto:".$settings['email']}}" class="fs-14 text-black mb-0  ps-4 d-flex  align-items-center"><span class="__cf_email__">{{$settings['email']}}</span></a>
                        </div>
                        <div class="desc d-flex align-items-sm-center mb-4 ">
                            <div  class="icon bground d-flex justify-content-center align-items-center">
                                <i class="fa-solid fa-phone  text-black"></i>
                            </div>
                            <a href="tel:+91 70963 36561"
                               class="fs-14 text-black mb-0  ps-4 -flex  align-items-center">{{$settings['contact_no']}}</a>
                        </div>
                    </div>

            </div>
            <div class="col-xxl-3 col-lg-5 col-md-7 col-sm-10">
                <div id="fb-root"></div>
                <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v17.0&appId=688889056611150&autoLogAppEvents=1" nonce="gGI9YNd2">
                </script>
                <div class="fb-group" data-href="https://www.facebook.com/groups/thegioihoahauofficial" data-width="280" ><blockquote cite="https://www.facebook.com/groups/thegioihoahauofficial" class="fb-xfbml-parse-ignore">THẾ GIỚI HOA HẬU</blockquote></div>

               {{-- <h3 class="mb-3 text-black fw-7">{{__('messages.recent_posts')}}</h3> --}}

            </div>
            <div class="col-xxl-3 col-lg-5 col-md-7 col-sm-10">
                <div id="fb-root"></div>
                <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v17.0&appId=688889056611150&autoLogAppEvents=1" nonce="EqTN5xyC"></script>
                <div class="fb-page" data-href="https://www.facebook.com/TheGioiHoaHauGroup" data-tabs="timeline" data-width="280" data-height="120" data-small-header="false" data-adapt-container-width="false" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/TheGioiHoaHauGroup" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/TheGioiHoaHauGroup">THẾ GIỚI HOA HẬU</a></blockquote></div>

            </div>
        </div>
        <div class="last-line pt-60 pb-4">
            <p href="#" class="fs-12 text-gray mb-0 text-center">{{__('messages.common.all_rights')}} © {{Illuminate\Support\Carbon::now()->format('Y')}} {{ $settings['application_name'] }}</p>
            {{-- <div class="row justify-content-between align-items-center"> --}}
                {{-- <div class="col-xxl-3 col-lg-4 col-sm-6 text-lg-start text-sm-end text-center order-2 order-lg-0">
                    <p href="#" class="fs-12 text-gray mb-0">{{__('messages.common.all_rights')}} © {{Illuminate\Support\Carbon::now()->format('Y')}} {{ $settings['application_name'] }}</p>
                </div> --}}
                {{-- <div
                        class="col-xxl-3 col-lg-4 col-sm-6 text-lg-center text-sm-end text-center my-sm-0 my-3  order-1 order-lg-1">
                    <div class="social-icon d-flex justify-content-lg-center justify-content-sm-start justify-content-center">
                        <a href="{{$settings['facebook_url']}}" target="_blank"> <i class="fa-brands fa-facebook-f text-gray fs-18 me-xl-5 me-4"></i> </a>
                        <a href="{{$settings['twitter_url']}}" target="_blank"> <i class="fa-brands fa-twitter text-gray fs-18 me-xl-5 me-4"></i> </a>
                        <a href="{{$settings['linkedin_url']}}" target="_blank"> <i class="fa-brands fa-linkedin-in  text-gray fs-18 me-xl-5 me-4"></i></a>
                        <a href="{{$settings['pinterest_url']}}" target="_blank"> <i class="fa-brands fa-pinterest text-gray fs-18 me-xl-5 me-4"></i></a>
                        <a href="{{$settings['instagram_url']}}" target="_blank"> <i class="fa-brands fa-instagram  text-gray fs-18  me-xl-5 me-4"></i></a>
                        <a href="{{$settings['vk_url']}}" target="_blank"> <i class="fa-brands fa-vk text-gray fs-18  me-xl-5 me-4"></i></a>
                        <a href="{{$settings['telegram_url']}}" target="_blank"> <i class="fa-brands fa-telegram  text-gray fs-18  me-xl-5 me-4"></i></a>
                        <a href="{{$settings['youtube_url']}}" target="_blank"> <i class="fa-brands fa-youtube  text-gray fs-18 "></i></a>
                    </div>
                </div> --}}
                {{-- <div class="col-xxl-3 col-lg-4 col-sm-12 text-lg-end mb-lg-0 mb-sm-4 text-center order-0 order-lg-2">
                    <div class="desc  justify-content-center ">
                        <a href="{{route('page.Terms')}}" class="fs-12 me-4 {{ Request::is('terms-conditions*') ? 'text-success' : 'text-gray' }}">{{__('messages.setting.terms-conditions')}}</a>
                        <a href="{{route('page.support')}}" class="fs-12 me-4 {{ Request::is('support*') ? 'text-success' : 'text-gray' }}">{{__('messages.setting.support')}}</a>
                        <a href="{{route('page.privacy')}}" class="fs-12 {{ Request::is('privacy*') ? 'text-success' : 'text-gray' }}">{{__('messages.setting.privacy')}}</a>
                    </div>
                </div> --}}
            {{-- </div> --}}
        </div>
    </div>
</footer>
