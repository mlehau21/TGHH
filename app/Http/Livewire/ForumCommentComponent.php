<?php

namespace App\Http\Livewire;

use App\Models\Comment;
use App\Models\ForumComment;
use App\Models\ForumCommentLike;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class ForumCommentComponent extends Component
{
    public $page = 1;
    public $post_id;
    public $refresh = true;
    public $is_exists_post_comment_like;
    protected $listeners = ['forumCommentRefresh'];

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

    public function editComment($comment_id)
    {
        session()->put('id', $comment_id);
        info($comment_id);
        $this->emitUp('editComment', $comment_id);
    }
    public function deleteComment($comment_id)
    {
        ForumComment::findOrFail($comment_id)->delete();
    }

    public function forumCommentRefresh()
    {
        $this->refresh = true;
    }

    public function render()
    {
        $data['comments'] = ForumComment::with('forum_comment_likes')->where('post_id', $this->post_id)->paginate(2, ['*'], 'page', $this->page);
        return view('livewire.forum-comment-component', $data);
    }
}
