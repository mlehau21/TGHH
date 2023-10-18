<?php

namespace App\Http\Controllers;

use App\Models\FBPost;
use App\Models\ForumPost;
use Illuminate\Http\Request;

class ForumController extends Controller
{
    public function index()
    {
        $data['posts'] = FBPost::latest()->get();
        return view('forum.index', $data);
    }

    public function create()
    {
        $data['forumPosts'] = ForumPost::latest()->paginate(10);
        return view('forum.add_forum', $data);
    }
}
