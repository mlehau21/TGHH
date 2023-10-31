<div class="gallery-post-section pt-4">
    <div class="row">
        @forelse ($posts as $post)
            <div class="col-lg-8 offset-2 pb-md-3">
                <div class="card custom-card mb-4 h-100 border">
                    <div class="image-container p-2">
                        <div class="author-info avater-top">
                            <img src="{{ $post->owner->photo ? asset($post->owner->photo) : asset('forum/avater.png') }}"
                                class="profile-picture avater-top" alt="Profile Picture">
                            <span class="author-name">{{ $post->owner->first_name }}</span>
                            <span class="created-time">Posted
                                {{ $post->created_at->diffForHumans() }}</span>
                        </div>
                        <div class="author-info avater-top">
                            @if ($post->file_type == 1)
                                <img src="{{ asset($post->file) }}"
                                    wire:click.prevent="showInModal({{ $post }})" class="card-img-top"
                                    style="height: 75vh; cursor: pointer;" alt="Post Image">
                            @elseif ($post->file_type == 2)
                                <video width="100" controls class="card-img-top" style="cursor: pointer;">
                                    <source src="{{ asset($post->file) }}" type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>
                            @endif
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
    <div class="modal" tabindex="-1" role="dialog" id="showPhoto" >
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn btn-danger btn-sm float-right rounded" wire:click.prevent="hideImageModal" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
            <div class="modal-body">
                <img src="" id="imageId" class="img-fluid" alt="">
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" wire:click.prevent="hideImageModal" data-dismiss="modal">Close</button>
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
                $('#imageId').attr('src',"");
                $('#showPhoto').modal('hide');
            }, false);
        </script>
    @endpush
</div>
