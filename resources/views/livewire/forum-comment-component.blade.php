<div class="comments comment-section border p-2">
    <ul>
        @forelse ($comments as $comment)
            <li class="comment">
                <div class="comment-details">
                    <div class="author-info">
                        <img src="{{ $comment->owner->photo ? asset($comment->owner->photo) : asset('forum/avater.png') }}"
                            class="profile-picture" alt="Profile Picture">
                        <span class="author-name">{{ $comment->owner->first_name }}</span>
                        <span class="created-time">Posted
                            {{ $comment->created_at->diffForHumans() }}</span>
                    </div>
                    @if ($comment->message)
                        <p class="comment-text comment-style">{{ $comment->message }}</p>
                    @endif
                    @if ($comment->photo)
                        <div>
                            <img class="comment-style" style="cursor: pointer"
                                wire:click.prevent="commentPhotoPopUp({{ $comment }})"
                                width="130" height="130" src="{{ asset('forum/' . $comment->photo) }}"
                                alt="">
                        </div>
                    @endif
                    <div class="comment-actions">
                        <button wire:click.prevent="postCommentLike({{ $comment->id }})" class="btn btn-light"
                            style="color:#fc147c">
                            <i class="fas fa-thumbs-up"></i>
                            @php
                                $i_liked_comment = null;
                                $check_like = null;
                                $post_comment = null;
                                $manage_forum = null;
                                $admin = false;
                                if (auth()->check()) {
                                    $i_liked_comment = \App\Models\ForumCommentLike::where('comment_id', $comment->id);
                                    $check_like = $i_liked_comment->where('created_by', auth()->user()->id)->first();
                                    $post_comment = $comment->created_by == auth()->user()->id;
                                    $manage_forum = auth()
                                        ->user()
                                        ->can('manage_forum');
                                }
                            @endphp
                            @if ($check_like)
                                <span class="like-text">Liked ({{ $i_liked_comment->count() }})</span>
                            @else
                                <span class="like-text">Like</span>
                            @endif
                        </button>
                        @if ($post_comment)
                            <button wire:click.prevent="editComment({{ $comment->id }})" class="btn btn-light"
                                style="color: blue">
                                <i class="fas fa-edit"></i>
                                <span class="like-text">Edit</span>
                            </button>
                        @endif
                        @if ($post_comment || $manage_forum)
                            <button wire:click.prevent="deleteComment({{ $comment->id }})" class="btn btn-light"
                                style="color:#c60000d3">
                                <i class="fas fa-trash"></i>
                                <span class="like-text">Delete</span>
                            </button>
                        @endif
                    </div>
                </div>
            </li>
        @empty
            <strong class="text-center">Empty!</strong>
        @endforelse

    </ul>
    <button wire:click="loadMore" class="btn btn-info see-more-btn">See
        More</button>

        <div class="modal" tabindex="-1" role="dialog" id="showPhoto">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="btn btn-danger btn-sm mt-0 float-right rounded"
                            wire:click.prevent="hideImageModal" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <img src="" id="imageId" class="img-fluid d-none" alt="">
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
