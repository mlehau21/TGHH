<?php

namespace App\Http\Livewire;

use App\Models\ForumComment;
use App\Models\ForumCommentLike;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class ForumCommentComponent extends Component
{
    public $page = 1;
    public $post_id;
    public $is_exists_post_comment_like;

    public function loadMore()
    {
        $this->page++; // Increment the page number
    }

    public function postCommentLike($comment_id)
    {
        if (Auth::id()) {
            $this->is_exists_post_comment_like = ForumCommentLike::where("comment_id", $comment_id)->where('user_id',Auth::id())->first();
            if ($this->is_exists_post_comment_like) {
                $this->is_exists_post_comment_like->delete();
            } else {
                ForumCommentLike::create([
                    'user_id' => Auth::id(),
                    'comment_id' => $comment_id,
                    'like_status' => 1,
                    'created_by' => Auth::id(),
                ]);
            }
            
        } else {
            return redirect('login');
        }
    }

    public function render()
    {
        $data['comments'] = ForumComment::with('forum_comment_likes')->where('post_id', $this->post_id)->paginate(2, ['*'], 'page', $this->page);
        return view('livewire.forum-comment-component', $data);
    }
}
