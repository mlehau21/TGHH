<div class="gallery-post-section pt-4">
    <div class="row">
        @forelse ($posts as $post)
            <div class="col-lg-8 offset-lg-2 col-md-12 col-sm-12 pb-md-3">
                <div class="card custom-card mb-4 h-100 border">
                    <div class="image-container p-2">
                        <div class="author-info avater-top">
                            <img src="{{ $post->owner->photo ? asset($post->owner->photo) : asset('forum/avater.png') }}"
                                class="profile-picture avater-top" alt="Profile Picture">
                            <span class="author-name">{{ $post->owner->first_name }}</span>
                            <span class="created-time">Posted
                                {{ $post->created_at->diffForHumans() }}</span>
                        </div>
                        <div class="author-info avater-top" style="cursor: pointer">
                            <div class="row gx-0">
                                @php
                                    $total_file = count($post->forum_post_files);
                                @endphp

                                @if ($total_file == 1)
                                    @if ($post->forum_post_file_single->file_type == 1)
                                        <img src="{{ asset($post->forum_post_file_single->file) }}"
                                            wire:click.prevent="showInModal({{ $post }})"
                                            style="cursor: pointer; height: 75vh" class="w-100" alt="Post Image">
                                    @elseif ($post->forum_post_file_single->file_type == 2)
                                        <video width="100" controls class="card-img-top" style="cursor: pointer;">
                                            <source src="{{ asset($post->forum_post_file_single->file) }}" type="video/mp4">
                                            Your browser does not support the video tag.
                                        </video>
                                    @endif
                                @endif

                                @if ($total_file == 2)
                                    @foreach ($post->forum_post_files as $file)
                                        @if ($file->file_type == 1)
                                        <div class="col-6 px-2 pl-2">
                                            <img  width="100%" src="{{ asset($file->file) }}"
                                                class="img-fluid mt-2" alt="Post Image 1">
                                        </div>
                                        @elseif ($file->file_type == 2)
                                        <div class="col-6 px-2 pl-2">
                                            <video width="100" controls class="card-img-top"
                                                style="cursor: pointer;">
                                                <source src="{{ asset($file->file) }}" type="video/mp4">
                                                Your browser does not support the video tag.
                                            </video>
                                        </div>
                                        @endif
                                    @endforeach
                                @endif

                                @if ($total_file == 3)
                                    @foreach ($post->forum_post_files as $index => $file)
                                        
                                        @if ($file->file_type == 1)
                                        <div class="col-{{ $index == 0 ? '12' : '6' }} px-2 pl-2">
                                            <img  width="100%" src="{{ asset($file->file) }}"
                                                class="img-fluid mt-2" alt="Post Image 1">
                                        </div>
                                        @elseif ($file->file_type == 2)
                                        <div class="col-{{ $index == 0 ? '12' : '6' }} px-2 pl-2">
                                            <video controls class="mt-2" style="width: 100%; height: 100%">
                                                <source src="{{ asset($file->file) }}" type="video/mp4">
                                                Your browser does not support the video tag.
                                            </video>
                                        </div>
                                        @endif
                                    @endforeach
                                @endif
                                {{-- <div class="col-6 px-2 pl-2">
                                    <img  width="100%" src="http://127.0.0.1:8000/uploads/post%20image/39/large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d.jpg"
                                        class="img-fluid mt-2" alt="Post Image 1">
                                </div>
                                <div class="col-6 px-2">
                                    <img  width="100%" src="http://127.0.0.1:8000/uploads/post%20image/39/large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d.jpg"
                                        class="img-fluid mt-2" alt="Post Image 1">
                                </div>
                                <div class="col-6 px-2 pr-2">
                                    <img  width="100%" src="http://127.0.0.1:8000/uploads/post%20image/39/large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d.jpg"
                                        class="img-fluid mt-2" alt="Post Image 1">
                                </div>
                                <div class="col-6 px-2">
                                    <img  width="100%" src="http://127.0.0.1:8000/uploads/post%20image/39/large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d.jpg"
                                        class="img-fluid mt-2" alt="Post Image 1">
                                </div> --}}
                                {{-- <div class="col-lg-12 mt-3 mt-md-3 col-md-12">
                                    <img height="340" width="100%" src="http://127.0.0.1:8000/uploads/post%20image/39/large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d.jpg"
                                        class="img-fluid" alt="Post Image 1">
                                </div> --}}
                            </div>

                        </div>
                        <div class="post-content p-2">
                            <h2 class="post-title">{{ $post->title }}</h2>
                            <p>{{ $post->description }}</p>
                            <hr>

                            <div class="d-flex justify-content-between">
                                <!-- Like button with Font Awesome heart icon -->
                                <div>
                                    <button wire:click.prevent="postLike({{ $post->id }})" class="btn btn-light"
                                        style="color:#fc147c">
                                        <i class="fas fa-thumbs-up"></i>
                                        @php
                                            $i_liked = null;
                                            if (auth()->check()) {
                                                $i_liked = $post->forum_likes->where('created_by', auth()->user()->id)->first();
                                            }
                                        @endphp
                                        <span class="like-text">Like{{ $i_liked ? 'd' : '' }}</span>
                                    </button>
                                    <span class="like-info">
                                        @if (auth()->check())
                                            @if ($post->forum_likes->count() > 1)
                                                {{ $i_liked ? 'You And' : '' }}
                                                {{ $post->forum_likes->count() - 1 }}
                                                other{{ $post->forum_likes->count() == 2 ? '' : 's' }}
                                            @else
                                                @if ($post->forum_likes->where('user_id', auth()->user()->id)->first())
                                                    You Liked This.
                                                @else
                                                    @if ($post->forum_likes->count() == 1)
                                                        {{ $post->forum_likes->count() }}
                                                        other{{ $post->forum_likes->count() == 1 ? '' : 's' }}
                                                    @endif
                                                @endif
                                            @endif
                                        @else
                                            @if ($post->forum_likes->count() == 1)
                                                {{ $post->forum_likes->count() }}
                                                other{{ $post->forum_likes->count() == 1 ? '' : 's' }}
                                            @endif
                                        @endif
                                    </span>
                                </div>
                                <div class="main-command">
                                    <span class="comment-info">
                                        @if ($post->forum_comments->count())
                                            {{ $post->forum_comments->count() }}
                                            comment{{ $post->forum_comments->count() == 1 ? '' : 's' }}
                                        @endif
                                    </span>
                                    <button wire:click.prevent="showComment({{ $post->id }})"
                                        class="btn btn-secondary toggle-comments"><i
                                            class="fas fa-comments text-white"></i>
                                        <span class="comment-text">Comment</span>
                                    </button>
                                </div>
                            </div>
                            @if (in_array($post->id, $showCommentStatus) && $post->id == $show_post_id)
                                @livewire('forum-comment-component', ['post_id' => $post->id])
                            @endif


                            <div class="comment-form">
                                <form
                                    wire:submit.prevent='{{ $isUpdateComment ? "commentUpdate($post->id)" : "commentAdd($post->id)" }}'>

                                    <div class="form-group border">
                                        <textarea class="form-control comment-input" wire:model.defer='comment' placeholder="Add a comment"></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Send</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @empty
        @endforelse
        <div>{{ $posts->links() }}</div>

    </div>
    <div class="modal" tabindex="-1" role="dialog" id="showPhoto">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="btn btn-danger btn-sm mt-0 float-right rounded"
                        wire:click.prevent="hideImageModal" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <nav aria-label="Page navigation mt-2">
                        <ul class="pagination justify-content-end">
                            <li class="page-item disabled">
                                <a class="page-link" href="#" tabindex="-1">Previous</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">Next</a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="modal-body">
                    <img src="" id="imageId" class="img-fluid" alt="">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" wire:click.prevent="hideImageModal"
                        data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>


    @push('script')
        <script>
            window.addEventListener('show-form', (message) => {
                $('#imageId').attr('src', message.detail.image);
                $('#showPhoto').modal('show');
            }, false);

            window.addEventListener('hide-form', (message) => {
                $('#imageId').attr('src', "");
                $('#showPhoto').modal('hide');
            }, false);
        </script>
    @endpush
</div>

{{-- <div class="gallery-page">
    <section class="gallery-section py-5">
        <div class="container">
            <div class="gallery-post-section pt-4">
                <div class="row">
                    <div class="col-lg-8 offset-4 pb-md-3">
                        <div class="card custom-card mb-4 h-100">
                            <div class="image-container">
                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="http://127.0.0.1:8000/uploads/post%20image/39/large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d.jpg"
                                            class="img-fluid" alt="Post Image 1">
                                    </div>
                                    <div class="col-md-6">
                                        <img src="http://127.0.0.1:8000/uploads/post%20image/39/large_289447134_6000595216634026_6797221462978289858_n_72a1410d74_f39d3b3f8d.jpg"
                                            class="img-fluid" alt="Post Image 2">
                                    </div>
                                </div>
                            </div>
                            <div class="post-content">
                                <div class="author-info">
                                    <img src="profile-picture.jpg" class="profile-picture" alt="Profile Picture">
                                    <span class="author-name">John Doe</span>
                                    <span class="created-time">Posted 2 hours ago</span>
                                </div>
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
                                                    <img src="profile-picture.jpg" class="profile-picture"
                                                        alt="Profile Picture">
                                                    <span class="author-name">John Doe</span>
                                                    <span class="created-time">Posted 2 hours ago</span>
                                                </div>
                                                <p class="comment-text">Comment 1</p>
                                            </div>
                                        </li>
                                        <li class="comment">
                                            <div class="comment-details">
                                                <div class="author-info">
                                                    <img src="profile-picture.jpg" class="profile-picture"
                                                        alt="Profile Picture">
                                                    <span class="author-name">John Doe</span>
                                                    <span class="created-time">Posted 2 hours ago</span>
                                                </div>
                                                <p class="comment-text">Comment 2</p>
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
</div> --}}
