@extends('front_new.layouts.app')

@section('title')
    {{ __('messages.forum.post') }}
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

        /* .author-info.avater-top {
            position: absolute;
            top: 20px;
            left: 20px;
            background: #dddddd42;
            border-radius: 25px;
            color: white;
            z-index: 1;
            padding-right: 15px;
        }

        .image-container {
            position: relative;
        }

        img.profile-picture.avater-top {
            border: 1px solid #ddd;
        } */
    </style>
    </head>
@endsection

@section('content')
    <div class="gallery-page">
        <section class="gallery-section py-5">
            <div class="container">
                <!-- Your existing code here -->
                <!-- ... -->
                <div class="gallery-post-section pt-4">
                    <div class="row">
                        <div class="col-lg-12 pb-md-3">
                            <div class="card custom-card mb-4 h-100">
                                <div class="image-container">
                                    <div class="author-info avater-top">
                                        <img src="http://127.0.0.1:8000/uploads/post%20image/39/large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d.jpg"
                                            class="profile-picture avater-top" alt="Profile Picture">
                                        <span class="author-name">John Doe</span>
                                        <span class="created-time">Posted 2 hours ago</span>
                                    </div>
                                    <img src="http://127.0.0.1:8000/uploads/post%20image/39/large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d.jpg"
                                        class="card-img-top" alt="Post Image">
                                </div>
                                <div class="post-content">
                                    <h2 class="post-title">Sample Forum Post Title</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod tincidunt libero
                                        ac aliquam.</p>
                                    <div class="d-flex justify-content-between">
                                        <!-- Like button with Font Awesome heart icon -->
                                        <button class="btn btn-primary">
                                            <i class="fas fa-heart"></i> Like
                                        </button>
                                        <button class="btn btn-secondary toggle-comments">Comment</button>
                                    </div>
                                    <div class="comments comment-section">
                                        <ul>
                                            <li class="comment">
                                                <div class="comment-details">
                                                    <div class="author-info">
                                                        <img src="http://127.0.0.1:8000/uploads/post%20image/39/large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d.jpg"
                                                            class="profile-picture" alt="Profile Picture">
                                                        <span class="author-name">John Doe</span>
                                                        <span class="created-time">Posted 2 hours ago</span>
                                                    </div>
                                                    <p class="comment-text">Comment 1</p>
                                                </div>
                                            </li>
                                            <li class="comment">
                                                <div class="comment-details">
                                                    <div class="author-info">
                                                        <img src="http://127.0.0.1:8000/uploads/post%20image/39/large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d.jpg"
                                                            class="profile-picture" alt="Profile Picture">
                                                        <span class="author-name">John Doe</span>
                                                        <span class="created-time">Posted 2 hours ago</span>
                                                    </div>
                                                    <p class="comment-text">Comment 2</p>
                                                </div>
                                            </li>
                                            <!-- Add more comments as needed -->
                                        </ul>
                                        <button class="btn btn-info see-more-btn" style="display: block;">See More</button>
                                    </div>
                                    <div class="comment-form">
                                        <form>
                                            <div class="form-group border">
                                                <textarea class="form-control comment-input" placeholder="Add a comment"></textarea>
                                            </div>
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection

@section('script')
    {{-- <script>
        const toggleCommentsButtons = document.querySelectorAll('.toggle-comments');
        const commentSections = document.querySelectorAll('.comment-section');
        const seeMoreButtons = document.querySelectorAll('.see-more-btn');

        toggleCommentsButtons.forEach((toggleButton, index) => {
            toggleButton.addEventListener('click', () => {
                commentSections[index].classList.toggle('active');
            });

            seeMoreButtons[index].addEventListener('click', () => {
                for (let i = 0; i < commentSections[index].children[0].childElementCount; i++) {
                    if (commentSections[index].children[0].children[i]) {
                        commentSections[index].children[0].children[i].style.display = 'block';
                    } else {
                        seeMoreButtons[index].style.display = 'none';
                    }
                }
            });
        });
    </script> --}}
@endsection
