<div class="comments comment-section border p-2">
    <ul>
        @forelse ($comments as $comment)
            <li class="comment">
                <div class="comment-details">
                    <div class="author-info">
                        <img src="{{ $comment->owner->photo ? asset($comment->owner->photo) : asset('forum/avater.png') }}"
                            class="profile-picture" alt="Profile Picture">
                        <span
                            class="author-name">{{ $comment->owner->first_name }}</span>
                        <span class="created-time">Posted
                            {{ $comment->created_at->diffForHumans() }}</span>
                    </div>
                    <p class="comment-text">{{ $comment->message }}</p>
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
        @empty
            <strong class="text-center">Empty!</strong>
        @endforelse

    </ul>
    <button wire:click="loadMore" class="btn btn-info see-more-btn">See
        More</button>
</div>
