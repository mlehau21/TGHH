@extends('front_new.layouts.app')

@section('title')
    {{ __('messages.details.group') }}
@endsection

@section('pageCss')
    <link href="{{ asset('front_web/build/scss/home.css') }}" rel="stylesheet" type="text/css">
    <!-- Add custom CSS for further styling -->
    <style>
        /* Customize the card appearance */
        /* Customize the card appearance */
        .custom-card {
            border: 2px solid #007BFF;
            /* Gorgeous blue border */
            border-radius: 10px !important;
            /* Rounded corners */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            /* Add a subtle shadow */
            position: relative;
            /* Allows absolute positioning */
            overflow: hidden;
            /* Hide overflow content if any */

        }

        .custom-card:hover {
            border-radius: 10px;
            /* Rounded corners */
            border-color: #FF5733;
            /* Change border color on hover */
            transition: all 0.5s;
            transform: scale(1.03);
            /* Scale up the card on hover */
            z-index: 1;
            /* Bring the card to the front on hover */
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
            z-index: 2;
            /* Place above other content */
        }

        /* Style the Facebook logo */
        .fb-logo {
            position: absolute;
            top: 10px;
            right: 10px;
            width: 40px;
            height: 40px;
            z-index: 2;
            /* Place above other content */
        }

        /* Style the comments */
        .card-footer ul {
            list-style: none;
            padding: 0;
        }

        .card-footer ul li {
            margin-bottom: 10px;
        }

        .card-img-top {
            object-fit: fill;
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
                        @php
                            $serial = 1;
                        @endphp
                        @forelse($posts as $post)
                            @if (isset($post->picture) || isset($post->message))
                                <div class="col-lg-4 col-sm-6 mb-4 pb-md-3">
                                    <div class="card custom-card mb-4 h-100">
                                        @if (isset($post->image))
                                            <img src="{{ $post->image }}"
                                                class="card-img-top" alt="Post Image" height="309">
                                        @endif
                                        @isset($post->message)
                                            <div class="card-body">
                                                <div class="p-3">
                                                    <p class="card-text">{{ $post->message }}</p>
                                                    <p class="card-text"><small
                                                            class="text-muted">{{ \Carbon\Carbon::parse($post->created_at)->diffForHumans() }}</small>
                                                    </p>
                                                    <a href="{{ $post->link }}" target="_blank" class="btn btn-primary">Read
                                                        More</a>
                                                </div>
                                            </div>
                                        @endisset

                                        @if (isset($post->comment))
                                            <div class="card-footer">
                                                <h5>Comments:</h5>

                                                <ul>
                                                    @foreach ($post->comment as $index => $comment)
                                                        <li>
                                                            <strong>{{ $index+1 }}:</strong>
                                                            {{ $comment->comment }}
                                                            <span class="text-muted small">
                                                                {{ \Carbon\Carbon::parse($comment->created_time)->diffForHumans() }}
                                                            </span>
                                                        </li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                        @endif
                                    </div>
                                </div>
                            @endif
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
