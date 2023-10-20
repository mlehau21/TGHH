<?php

namespace App\Http\Livewire;

use App\Models\ForumComment;
use App\Models\ForumLike;
use Livewire\Component;
use App\Models\ForumPost as Model;
use Illuminate\Support\Facades\Auth;
use Livewire\WithPagination;

class ForumPost extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $comment;
    public $showCommentStatus = [];
    public $show_post_id = null;
    public $is_exists_post_like;

    public function mount()
    {
    }
    public function getForumsProperty()
    {
        return Model::with('owner', 'forum_likes', 'forum_comments')
            ->latest()
            ->simplePaginate(1);
    }

    public function commentAdd($post_id)
    {
        if (Auth::id()) {
            if ($this->comment) {
                ForumComment::create([
                    'user_id' => Auth::id(),
                    'post_id' => $post_id,
                    'message' => $this->comment,
                    'created_by' => Auth::id(),
                ]);
                $this->comment = null;
            }
        } else {
            return redirect('login');
        }
    }

    public function postLike($post_id)
    {
        if (Auth::id()) {
            $this->is_exists_post_like = ForumLike::where('post_id', $post_id)
                ->where('user_id', Auth::id())
                ->first();
            if ($this->is_exists_post_like) {
                $this->is_exists_post_like->delete();
            } else {
                ForumLike::create([
                    'user_id' => Auth::id(),
                    'post_id' => $post_id,
                    'like_status' => 1,
                    'created_by' => Auth::id(),
                ]);
            }
        } else {
            return redirect('login');
        }
    }

    public function showComment($post_id)
    {
        if (in_array($post_id, $this->showCommentStatus)) {
            $this->show_post_id = $post_id;
            $this->showCommentStatus = array_slice($this->showCommentStatus, $post_id);
        } else {
            $this->show_post_id = $post_id;
            array_push($this->showCommentStatus, $post_id);
        }
       
    }

    public function render()
    {
        $data['posts'] = $this->forums;
        return view('livewire.forum-post', $data);
    }
}
