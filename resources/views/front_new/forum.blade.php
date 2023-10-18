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
                <div class="gallery-post-section pt-4">
                    <div class="row">
                        <div class="col-lg-12 pb-md-3">
                            <div class="card custom-card mb-4 h-100 border">
                                <div class="image-container p-2">
                                    <div class="author-info avater-top">
                                        <img src="http://127.0.0.1:8000/uploads/post%20image/39/large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d.jpg"
                                            class="profile-picture avater-top" alt="Profile Picture">
                                        <span class="author-name">John Doe</span>
                                        <span class="created-time">Posted 2 hours ago</span>
                                    </div>
                                    <img src="http://127.0.0.1:8000/uploads/post%20image/39/large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d.jpg"
                                        class="card-img-top" alt="Post Image">
                                </div>
                                <div class="post-content p-2">
                                    <h2 class="post-title">Sample Forum Post Title</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod tincidunt libero
                                        ac aliquam.</p>
                                    <hr>

                                    <div class="d-flex justify-content-between">
                                        <!-- Like button with Font Awesome heart icon -->
                                        <div>
                                            <button class="btn btn-light" style="color:#fc147c">
                                                <i class="fas fa-thumbs-up"></i>
                                                <span class="like-text">Like</span>
                                            </button>
                                            <span class="like-info">Mehedi and 50 others</span>
                                        </div>
                                        <div class="main-command">
                                            <span class="comment-info">50 comments</span>
                                            <button class="btn btn-secondary toggle-comments"><i
                                                    class="fas fa-comments text-white"></i>
                                                <span class="comment-text">Comment</span>
                                            </button>
                                        </div>
                                    </div>

                                    <div class="comments comment-section border p-2">
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
                                                    <div class="comment-actions">
                                                        <button class="btn btn-light" style="color:#fc147c">
                                                            <i class="fas fa-thumbs-up"></i>
                                                            <span class="like-text">Like</span>
                                                        </button>
                                                        <button class="btn btn-light" style="color: blue">
                                                            <i class="fas fa-edit"></i>
                                                            <span class="like-text">Edit</span>
                                                        </button>
                                                        <button class="btn btn-light" style="color:#c60000d3">
                                                            <i class="fas fa-trash"></i>
                                                            <span class="like-text">Delete</span>
                                                        </button>

                                                    </div>
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
                                                    <p class="comment-text">Comment 1</p>
                                                    <div class="comment-actions">
                                                        <button class="btn btn-light" style="color:#fc147c">
                                                            <i class="fas fa-thumbs-up"></i>
                                                            <span class="like-text">Like</span>
                                                        </button>
                                                        <button class="btn btn-light" style="color: blue">
                                                            <i class="fas fa-edit"></i>
                                                            <span class="like-text">Edit</span>
                                                        </button>
                                                        <button class="btn btn-light" style="color:#c60000d3">
                                                            <i class="fas fa-trash"></i>
                                                            <span class="like-text">Delete</span>
                                                        </button>

                                                    </div>
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
                        <div class="col-lg-12 pb-md-3">
                            <div class="card custom-card mb-4 h-100 border">
                                <div class="image-container p-2">
                                    <div class="author-info avater-top">
                                        <img src="http://127.0.0.1:8000/uploads/post%20image/25/66a8f2d61fb960e6cdd044d628659e1f.jpg"
                                            class="profile-picture avater-top" alt="Profile Picture">
                                        <span class="author-name">John Doe</span>
                                        <span class="created-time">Posted 2 hours ago</span>
                                    </div>
                                    <img src="http://127.0.0.1:8000/uploads/post%20image/25/66a8f2d61fb960e6cdd044d628659e1f.jpg"
                                        class="card-img-top" alt="Post Image">
                                </div>
                                <div class="post-content p-2">
                                    <h2 class="post-title">Sample Forum Post Title</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod tincidunt libero
                                        ac aliquam.</p>
                                    <hr>
                                    <div class="d-flex justify-content-between">
                                        <!-- Like button with Font Awesome heart icon -->
                                        <div>
                                            <button class="btn btn-light" style="color:#fc147c">
                                                <i class="fas fa-thumbs-up"></i>
                                                <span class="like-text">Like</span>
                                            </button>
                                            <span class="like-info">Mehedi and 50 others</span>
                                        </div>
                                        <div class="main-command">
                                            <span class="comment-info">50 comments</span>
                                            <button class="btn btn-secondary toggle-comments"><i
                                                    class="fas fa-comments text-white"></i>
                                                <span class="comment-text">Comment</span>
                                            </button>
                                        </div>
                                    </div>

                                    <div class="comments comment-section border p-2">
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
                                                    <div class="comment-actions">
                                                        <button class="btn btn-light" style="color:#fc147c">
                                                            <i class="fas fa-thumbs-up"></i>
                                                            <span class="like-text">Like</span>
                                                        </button>
                                                        <button class="btn btn-light" style="color: blue">
                                                            <i class="fas fa-edit"></i>
                                                            <span class="like-text">Edit</span>
                                                        </button>
                                                        <button class="btn btn-light" style="color:#c60000d3">
                                                            <i class="fas fa-trash"></i>
                                                            <span class="like-text">Delete</span>
                                                        </button>

                                                    </div>
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
                                                    <p class="comment-text">Comment 1</p>
                                                    <div class="comment-actions">
                                                        <button class="btn btn-light" style="color:#fc147c">
                                                            <i class="fas fa-thumbs-up"></i>
                                                            <span class="like-text">Like</span>
                                                        </button>
                                                        <button class="btn btn-light" style="color: blue">
                                                            <i class="fas fa-edit"></i>
                                                            <span class="like-text">Edit</span>
                                                        </button>
                                                        <button class="btn btn-light" style="color:#c60000d3">
                                                            <i class="fas fa-trash"></i>
                                                            <span class="like-text">Delete</span>
                                                        </button>

                                                    </div>
                                                </div>
                                            </li>
                                            <!-- Add more comments as needed -->
                                        </ul>
                                        <button class="btn btn-info see-more-btn" style="display: block;">See
                                            More</button>
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
                        <div class="col-lg-12 pb-md-3">
                            <div class="card custom-card mb-4 h-100 border">
                                <div class="image-container p-2">
                                    <div class="author-info avater-top">
                                        <img src="http://127.0.0.1:8000/uploads/post%20image/34/230115-miss-universe-usa-cc-1247a-37ef65.jpg"
                                            class="profile-picture avater-top" alt="Profile Picture">
                                        <span class="author-name">John Doe</span>
                                        <span class="created-time">Posted 2 hours ago</span>
                                    </div>
                                    <img src="http://127.0.0.1:8000/uploads/post%20image/34/230115-miss-universe-usa-cc-1247a-37ef65.jpg"
                                        class="card-img-top" alt="Post Image">
                                </div>
                                <div class="post-content p-2">
                                    <h2 class="post-title">Sample Forum Post Title</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod tincidunt libero
                                        ac aliquam.</p>
                                    <hr>
                                    <div class="d-flex justify-content-between">
                                        <!-- Like button with Font Awesome heart icon -->
                                        <div>
                                            <button class="btn btn-light" style="color:#fc147c">
                                                <i class="fas fa-thumbs-up"></i>
                                                <span class="like-text">Like</span>
                                            </button>
                                            <span class="like-info">Mehedi and 50 others</span>
                                        </div>
                                        <div class="main-command">
                                            <span class="comment-info">50 comments</span>
                                            <button class="btn btn-secondary toggle-comments"><i
                                                    class="fas fa-comments text-white"></i>
                                                <span class="comment-text">Comment</span>
                                            </button>
                                        </div>
                                    </div>

                                    <div class="comments comment-section border p-2">
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
                                                    <div class="comment-actions">
                                                        <button class="btn btn-light" style="color:#fc147c">
                                                            <i class="fas fa-thumbs-up"></i>
                                                            <span class="like-text">Like</span>
                                                        </button>
                                                        <button class="btn btn-light" style="color: blue">
                                                            <i class="fas fa-edit"></i>
                                                            <span class="like-text">Edit</span>
                                                        </button>
                                                        <button class="btn btn-light" style="color:#c60000d3">
                                                            <i class="fas fa-trash"></i>
                                                            <span class="like-text">Delete</span>
                                                        </button>

                                                    </div>
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
                                                    <p class="comment-text">Comment 1</p>
                                                    <div class="comment-actions">
                                                        <button class="btn btn-light" style="color:#fc147c">
                                                            <i class="fas fa-thumbs-up"></i>
                                                            <span class="like-text">Like</span>
                                                        </button>
                                                        <button class="btn btn-light" style="color: blue">
                                                            <i class="fas fa-edit"></i>
                                                            <span class="like-text">Edit</span>
                                                        </button>
                                                        <button class="btn btn-light" style="color:#c60000d3">
                                                            <i class="fas fa-trash"></i>
                                                            <span class="like-text">Delete</span>
                                                        </button>

                                                    </div>
                                                </div>
                                            </li>
                                            <!-- Add more comments as needed -->
                                        </ul>
                                        <button class="btn btn-info see-more-btn" style="display: block;">See
                                            More</button>
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
