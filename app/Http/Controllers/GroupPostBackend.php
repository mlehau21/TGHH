<?php

namespace App\Http\Controllers;

use App\Models\FBPost;
use Illuminate\Http\Request;

class GroupPostBackend extends Controller
{
    public function index()
    {
        $data['posts'] = FBPost::latest()->get();
        return view('post.group.group_post', $data);
    }
}
