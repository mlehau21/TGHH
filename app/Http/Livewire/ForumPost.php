<?php

namespace App\Http\Livewire;

use App\Models\ForumComment;
use App\Models\ForumFiles;
use App\Models\ForumLike;
use Livewire\Component;
use App\Models\ForumPost as Model;
use Illuminate\Support\Facades\Auth;
use Livewire\WithPagination;
use Livewire\WithFileUploads;

class ForumPost extends Component
{
    use WithFileUploads;
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $comment;
    public $photo; // Property to hold the uploaded photo
    public $photoPath; // Property to store the photo's path after uploading
    public $postFileChooseId;
    public $temporaryFile;
    public $file_id;
    public $post_id;
    public $showCommentStatus = [];
    public $show_post_id = null;
    public $is_exists_post_like;
    public $editPhoto = '';
    public $isUpdateComment = false;
    protected $listeners = ['editComment'];


    public function editComment($comment_id)
    {
        $comment = ForumComment::findOrFail($comment_id);
        $this->comment = $comment->message;
        $this->editPhoto =  asset("forum/".$comment->photo);
        $this->isUpdateComment = true;
    }
    public function getForumsProperty()
    {
        return Model::with('owner', 'forum_likes', 'forum_comments', 'forum_post_file_single', 'forum_post_files')
            ->where('active_status', 1)
            ->latest()
            // ->get();
            ->simplePaginate(env('FORUM_PAGINATION_LIMIT'));
    }

    public function ChooseFileUnique($past_id)
    {
        $this->postFileChooseId = $past_id;
    }

    public function commentAdd($post_id)
    {
        if (Auth::id()) {
            if ($this->comment || $this->photo) {
                if ($this->photo) {
                    $this->photoPath = $this->photo->store('/comment', 'forum');
                }

                ForumComment::create([
                    'user_id' => Auth::id(),
                    'post_id' => $post_id,
                    'message' => $this->comment,
                    'photo' => $this->photoPath,
                    'created_by' => Auth::id(),
                ]);
                $this->comment = null;
                $this->photo = null;
            }
            $this->emit('forumCommentRefresh');
        } else {
            return redirect('login');
        }
    }

    public function commentUpdate($post_id)
    {
        if (Auth::id()) {
            if ($this->comment || $this->photo) {
                $id = session('id');
                if ($this->photo) {
                    $this->photoPath = $this->photo->store('/comment', 'forum');
                }

                ForumComment::findOrFail($id)->update([
                    'user_id' => Auth::id(),
                    'post_id' => $post_id,
                    'message' => $this->comment,
                    'photo' => $this->photoPath,
                    'created_by' => Auth::id(),
                ]);
                $this->comment = null;
                $this->photo = null;
                $this->isUpdateComment = false;
            }

            $this->emit('forumCommentRefresh');
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

    public function showInModal(Model $post, ForumFiles $forumFiles)
    {
        $this->file_id = $forumFiles->id;
        $this->post_id = $post->id;
        $image = asset($forumFiles->file);
        $this->dispatchBrowserEvent('show-form', ['file_path' => $image, 'file_type' => $forumFiles->file_type]);
    }

    public function hideImageModal()
    {
        $this->dispatchBrowserEvent('hide-form');
    }

    public function paginateNext()
    {
        $this->dispatchBrowserEvent('hide-form');
        $forumFiles = ForumFiles::find($this->file_id);
        $nextItem = ForumFiles::where('id', '>', $forumFiles->id)
            ->where('forum_post_id', $this->post_id)
            ->first();
        if ($nextItem) {
            $this->file_id = $nextItem->id;
            $image = asset($nextItem->file);
            $this->dispatchBrowserEvent('show-form', ['file_path' => $image, 'file_type' => $nextItem->file_type]);
        }
    }

    public function paginatePrevious()
    {
        $this->dispatchBrowserEvent('hide-form');
        $forumFiles = ForumFiles::find($this->file_id);
        $previousItem = ForumFiles::where('id', '<', $forumFiles->id)
            ->where('forum_post_id', $this->post_id)
            ->first();
        if ($previousItem) {
            $this->file_id = $previousItem->id;
            $image = asset($previousItem->file);
            $this->dispatchBrowserEvent('show-form', ['file_path' => $image, 'file_type' => $previousItem->file_type]);
        }
    }
}
