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
                    <p class="comment-text">{{ $comment->message }}</p>
                    <div class="comment-actions">
                        <button wire:click.prevent="postCommentLike({{ $comment->id }})" class="btn btn-light"
                            style="color:#fc147c">
                            <i class="fas fa-thumbs-up"></i>
                            @php
                                $i_liked_comment = null;
                                $check_like = null;
                                if (auth()->check()) {
                                    $i_liked_comment = \App\Models\ForumCommentLike::where('comment_id', $comment->id);
                                    $check_like = $i_liked_comment->where('created_by', auth()->user()->id)->first();
                                }
                            @endphp
                            @if ($check_like)
                                <span class="like-text">Liked ({{ $i_liked_comment->count() }})</span>
                            @else
                                <span class="like-text">Like</span>
                            @endif
                        </button>
                        @if ($check_like)
                            <button wire:click.prevent="editComment({{ $comment->id }})" class="btn btn-light" style="color: blue">
                                <i class="fas fa-edit"></i>
                                <span class="like-text">Edit</span>
                            </button>
                        @endif
                        @if ($check_like)
                            <button wire:click.prevent="deleteComment({{ $comment->id }})" class="btn btn-light" style="color:#c60000d3">
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
</div>
