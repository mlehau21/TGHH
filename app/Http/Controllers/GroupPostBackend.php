<?php

namespace App\Http\Controllers;

use App\Models\FBPost;
use Illuminate\Http\Request;

class GroupPostBackend extends Controller
{
    public function index()
    {
        $data['posts'] = FBPost::latest()->where('active_status', 1)->get();
        return view('post.group.group_post', $data);
    }

    public function fbPostDelete($id)
    {
        dd($id);
        FBPost::findOrFail($id)->update(['active_status' => 0]);
        return redirect()->back();
    }
}
