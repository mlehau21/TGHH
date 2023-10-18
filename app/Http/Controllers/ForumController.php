<?php

namespace App\Http\Controllers;

use App\Models\FBPost;
use Illuminate\Http\Request;

class ForumController extends Controller
{
    public function index()
    {
        $data['posts'] = FBPost::latest()->get();
        return view('forum.index', $data);
    }
}
