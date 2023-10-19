@section('title')
    Forums
@endsection

@section('pageCss')
    <link href="{{ asset('front_web/build/scss/home.css') }}" rel="stylesheet" type="text/css">
    <!-- Add custom CSS for further styling -->
    <style>
        /* Your existing CSS styles here */
        /* ... */
        .comments ul {
            list-style: none;
            padding: 0;
        }

        .comments li {
            margin-bottom: 10px;
        }

        /* Style for "See More" button */
        .see-more-btn {
            display: block;
            margin-top: 10px;
            cursor: pointer;
        }

        /* Profile picture style */
        .profile-picture {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-right: 10px;
        }

        /* Title style */
        .post-title {
            font-size: 20px;
            font-weight: bold;
        }

        /* Comment section style */
        .comment-section {
            display: block;
        }

        .comment-section.active {
            display: block;
        }

        /* Comment form style */
        .comment-form {
            margin-top: 10px;
        }

        .comment-input {
            width: 100%;
        }

        .author-info {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        .author-name {
            font-weight: bold;
            margin-right: 10px;
        }

        .created-time {
            font-size: 14px;
            color: #777;
        }

        @media (max-width: 576px) {
            span.like-info {
                display: block;
                font-size: 12px;
            }

            .like-text,
            .comment-text {
                display: none;
                padding: 3px 8px;
            }

            .like-info,
            .comment-info {
                font-size: 12px;
            }

            .main-command {
                display: flex;
                flex-direction: column-reverse;
                align-items: flex-end;
            }

            span.author-name {
                font-size: 13px;
            }

            span.created-time {
                font-size: 10px;
            }
        }
    </style>
    </head>
@endsection

@section('content')
    <div class="gallery-page">
        <section class="gallery-section py-5">
            <div class="container">
                <!-- Your existing code here -->
                <!-- ... -->
               @livewire('forum-post')
            </div>
        </section>
    </div>
@endsection

@section('script')
@endsection
