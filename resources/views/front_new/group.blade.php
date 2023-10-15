@extends('front_new.layouts.app')

@section('title')
    {{ __('messages.details.group') }}
@endsection

@section('pageCss')
    <link href="{{ asset('front_web/build/scss/home.css') }}" rel="stylesheet" type="text/css">
    <!-- Add custom CSS for further styling -->
    <style>
        /* Customize the card appearance */
        .custom-card {
            border: 2px solid #007BFF;
            /* Gorgeous blue border */
            border-radius: 10px;
            /* Rounded corners */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            /* Add a subtle shadow */
            position: relative;
            /* Allows absolute positioning */
        }

        .custom-shadow {
            box-shadow: 0px 4px 32px -5px rgba(0, 0, 0, 0.59) !important;
            border-radius: 8px !important;
        }

        /* Style the user profile photo */
        .profile-photo {
            position: absolute;
            top: 10px;
            left: 10px;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            border: 2px solid #007BFF;
        }

        /* Style the Facebook logo */
        .fb-logo {
            position: absolute;
            top: 10px;
            right: 10px;
            width: 40px;
            height: 40px;
        }

        /* Style the comments */
        .card-footer ul {
            list-style: none;
            padding: 0;
        }

        .card-footer ul li {
            margin-bottom: 10px;
        }
    </style>
    </head>
@endsection

@section('content')
    <div class="gallery-page">
        <section class="gallery-section py-5">
            <div class="container">
                <div class="section-heading">
                    <div class="row align-items-center">
                        <div class="col-md-6 section-heading-left">
                            <h2 class="text-black">{{ __('messages.post.gallery') }}</h2>
                        </div>
                    </div>
                </div>
                <div class="gallery-post-section pt-4">
                    <div class="row">
                        @forelse($posts->data as $post)
                            <div class="col-lg-4 col-sm-6 mb-4 pb-md-3">
                                <div class="card custom-card mb-4"> <!-- Use the custom-card class -->
                                    <!-- Display the profile picture here, outside the loop -->
                                    <img src="https://picsum.photos/200/300" alt="User Profile" class="profile-photo">
                                    <img src="https://picsum.photos/200/300" alt="Facebook Logo" class="fb-logo">
                                    @if (isset($post->attachments->data[0]->media->image->src))
                                        <img src="{{ $post->attachments->data[0]->media->image->src }}" class="card-img-top"
                                            alt="Post Image">
                                    @endif
                                    @isset($post->message)
                                        <div class="card-body">
                                            <p class="card-text">{{ $post->message }}</p>
                                            <p class="card-text"><small class="text-muted">{{ $post->created_time }}</small></p>
                                            <a href="{{ $post->link }}" class="btn btn-primary">Read More</a>
                                        </div>
                                    @endisset
                                    @php
                                        $user_id = '2199254543739914'; // Replace with the actual user ID

                                        $url = "https://graph.facebook.com/v12.0/{$user_id}?access_token=". env('FACEBOOK_ACCESS_TOKEN');
                                        
                                        // "https://graph.facebook.com/{$user_id}?fields=id,name,email,picture&access_token=". env('FACEBOOK_ACCESS_TOKEN');
                                        // Initialize cURL session
                                        $ch = curl_init($url);

                                        // Set cURL options
                                        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

                                        // Execute cURL session
                                        $response = curl_exec($ch);

                                    @endphp
                                    @dd(
                                        $post,
                                    
                                        $response 
                                    )
                                    @if (isset($post->comments->data))
                                        <div class="card-footer">
                                            <h5>Comments:</h5>
                                            <ul>
                                                @foreach ($post->comments->data as $comment)
                                                    <li>
                                                        <strong>{{ $comment->from->name }}:</strong>
                                                        {{ $comment->message }}
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    @endif
                                </div>
                            </div>
                            <div class="col-lg-4 col-sm-6 mb-4 pb-md-3">
                                <iframe
                                    src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2FTheGioiHoaHauGroup%2Fposts%2Fpfbid02LF8c9UFu9sS97gwKRqugkgUDMmvEN81wQRfEWfkxu9E4V3ycTNvj9qc3TAgmZFFpl&show_text=true&width=500"
                                    width="500" height="718" style="border:none;overflow:hidden" scrolling="no"
                                    frameborder="0" allowfullscreen="true"
                                    allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                            </div>
                        @empty
                            <div class="text-center text-dark">
                                <div class="my-5">
                                    <h5>{{ __('messages.no_album_found') }}</h5>
                                </div>
                            </div>
                        @endforelse

                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection

@section('script')
    {{-- Add any additional JavaScript if needed --}}
@endsection
