<div class="gallery-post-section pt-4">
    @push('css')
        <style>
            .overTheImage {
                position: relative;
                display: inline-block;
            }

            .overTheImage img {
                width: 100%;
                height: 340px;
                opacity: 0.5;
                /* Adjust the height as needed */
            }

            .overTheImage h2 {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                background-color: rgba(255, 255, 255, 0.7);
                padding: 5px 10px;
                margin: 10px;
                border-radius: 5px;
            }

            .comment-details {
                display: inline-flex;
                flex-direction: column;
            }

            .comment-style {
                background-color: gainsboro;
                padding: 5px;
                border-radius: 13px;
            }
        </style>
    @endpush
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
                                            wire:click.prevent="showInModal( {{ $post->id }}, {{ $post->forum_post_file_single }})"
                                            style="cursor: pointer; height: 75vh" class="w-100" alt="Post Image">
                                    @elseif ($post->forum_post_file_single->file_type == 2)
                                        <video width="100" controls class="card-img-top" style="cursor: pointer;"
                                            wire:click.prevent="showInModal( {{ $post->id }}, {{ $post->forum_post_file_single }})">
                                            <source src="{{ asset($post->forum_post_file_single->file) }}"
                                                type="video/mp4">
                                            Your browser does not support the video tag.
                                        </video>
                                    @endif
                                @endif

                                @if ($total_file == 2)
                                    @foreach ($post->forum_post_files as $file)
                                        @if ($file->file_type == 1)
                                            <div class="col-6 px-2 pl-2">
                                                <img width="100%" src="{{ asset($file->file) }}"
                                                    class="img-fluid mt-2" alt="Post Image 1"
                                                    wire:click.prevent="showInModal({{ $post->id }}, {{ $file }})">
                                            </div>
                                        @elseif ($file->file_type == 2)
                                            <div class="col-6 px-2 pl-2">
                                                <video width="100" controls class="card-img-top"
                                                    wire:click.prevent="showInModal({{ $post->id }}, {{ $file }})"
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
                                                <img width="100%" src="{{ asset($file->file) }}"
                                                    wire:click.prevent="showInModal({{ $post->id }}, {{ $file }})"
                                                    class="img-fluid mt-2" alt="Post Image 1">
                                            </div>
                                        @elseif ($file->file_type == 2)
                                            <div class="col-{{ $index == 0 ? '12' : '6' }} px-2 pl-2">
                                                <video controls class="mt-2" style="width: 100%; height: 100%"
                                                    wire:click.prevent="showInModal({{ $post->id }}, {{ $file }})">
                                                    <source src="{{ asset($file->file) }}" type="video/mp4">
                                                    Your browser does not support the video tag.
                                                </video>
                                            </div>
                                        @endif
                                    @endforeach
                                @endif

                                @if ($total_file == 4)
                                    @foreach ($post->forum_post_files as $index => $file)
                                        @if ($file->file_type == 1)
                                            <div class="col-6 px-2 pl-2">
                                                <img width="100%" src="{{ asset($file->file) }}"
                                                    wire:click.prevent="showInModal({{ $post->id }}, {{ $file }})"
                                                    class="img-fluid mt-2" alt="Post Image 1">
                                            </div>
                                        @elseif ($file->file_type == 2)
                                            <div class="col-6 px-2 pl-2">
                                                <video controls class="mt-2" style="width: 100%; height: 100%"
                                                    wire:click.prevent="showInModal({{ $post->id }}, {{ $file }})">
                                                    <source src="{{ asset($file->file) }}" type="video/mp4">
                                                    Your browser does not support the video tag.
                                                </video>
                                            </div>
                                        @endif
                                    @endforeach
                                @endif
                                @if ($total_file > 4)
                                    @foreach ($post->forum_post_files->take(3) as $index => $file)
                                        @if ($file->file_type == 1)
                                            <div class="col-6 px-2 pl-2">
                                                <img width="100%" src="{{ asset($file->file) }}"
                                                    wire:click.prevent="showInModal({{ $post->id }}, {{ $file }})"
                                                    class="img-fluid mt-2" alt="Post Image 1">
                                            </div>
                                        @elseif ($file->file_type == 2)
                                            <div class="col-6 px-2 pl-2">
                                                <video controls class="mt-2" style="width: 100%; height: 100%"
                                                    wire:click.prevent="showInModal({{ $post->id }}, {{ $file }})">
                                                    <source src="{{ asset($file->file) }}" type="video/mp4">
                                                    Your browser does not support the video tag.
                                                </video>
                                            </div>
                                        @endif
                                    @endforeach

                                    @foreach ($post->forum_post_files->skip(3)->take(1) as $index => $file)
                                        @if ($file->file_type == 1)
                                            <div class="col-6 px-2 pl-2">
                                                <div class="overTheImage">
                                                    <img style="width: 100%; height: 100%"
                                                        wire:click.prevent="showInModal({{ $post->id }}, {{ $file }})"
                                                        src="{{ asset($file->file) }}" class="img-fluid mt-2"
                                                        alt="Post Image 1">
                                                    <h2>+{{ $total_file - 4 }}</h2>
                                                </div>
                                            </div>
                                        @elseif ($file->file_type == 2)
                                            <div class="col-6 px-2 pl-2">
                                                <video controls class="mt-2" style="width: 100%; height: 100%"
                                                    wire:click.prevent="showInModal({{ $post->id }}, {{ $file }})">
                                                    <source src="{{ asset($file->file) }}" type="video/mp4">
                                                    Your browser does not support the video tag.
                                                </video>
                                            </div>
                                        @endif
                                    @endforeach
                                @endif
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
                                    wire:submit.prevent='{{ $isUpdateComment ? "commentUpdate($post->id)" : "commentAdd($post->id)" }}'
                                    enctype="multipart/form-data">

                                    <div class="form-group border">
                                        <textarea class="form-control comment-input" cals="2" wire:model.defer='comment' placeholder="Add a comment"></textarea>
                                    </div>
                                    @if (isset($photo) && $postFileChooseId == $post->id)
                                        <div>
                                            <img class="comment-style" width="130" height="130"
                                                src="{{ $photo->temporaryUrl() }}" alt="">
                                        </div>
                                    @endif
                                    @if (isset($editPhoto) && !empty($editPhoto) && !isset($photo))
                                        <div>
                                            <img class="comment-style" width="130" height="130"
                                                src="{{ $editPhoto }}" alt="">
                                        </div>
                                    @endif
                                    <div class="form-group">
                                        <label for="comment-image{{ $post->id }}"
                                            class="btn btn-secondary custom-upload-btn">
                                            <i class="fas fa-camera"></i> Upload a Photo
                                        </label>
                                        <input type="file" id="comment-image{{ $post->id }}"
                                            wire:change='ChooseFileUnique({{ $post->id }})' accept="image/*"
                                            name="photo" wire:model.defer="photo" class="d-none">
                                    </div>
                                    <br>
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
                            <li class="page-item">
                                <a class="page-link" wire:click.prevent="paginatePrevious()" href="#"
                                    tabindex="-1">Previous</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" wire:click.prevent="paginateNext()" href="#">Next</a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="modal-body">
                    <img src="" id="imageId" class="img-fluid d-none" alt="">
                    <div id="controlsVideo">
                        <video controls class="mt-2" style="width: 100%; height: 100%">
                            <source src="" id="videoId" type="video/mp4">
                            Your browser does not support the video tag.
                        </video>
                    </div>
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
                $('#imageId').removeClass('d-none');
                $('#imageId').attr('src', message.detail.file_path);

                $('#showPhoto').modal('show');
            }, false);

            window.addEventListener('hide-form', (message) => {
                $('#imageId').attr('src', "");
                $('#showPhoto').modal('hide');
            }, false);
        </script>
    @endpush
</div>
