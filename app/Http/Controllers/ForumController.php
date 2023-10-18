<?php

namespace App\Http\Controllers;

use App\Models\FBPost;
use App\Models\ForumPost;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Laracasts\Flash\Flash;
use Illuminate\Support\Facades\Validator;

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

    public function store(Request $request)
    {
        $rules = [
            'title' => 'nullable|string|max:256',
            'description' => 'nullable|string|max:1000',
            'file_type' => 'required|numeric',
        ];

        if ($request->file_type == 1) {
            $rules['file'] = 'required|image|mimes:jpeg,png,gif|max:2048';
        } elseif ($request->file_type == 2) {
            $rules['file'] = 'required|file|mimetypes:video/mp4,video/avi,video/quicktime|max:20480';
        } else {
            $rules['file'] = 'nullable';
        }

        $messages = [
            'title.required' => 'Enter forum title!',
            'description.required' => 'Enter forum description!',
            'file_type.required' => 'Enter forum file type!',
            'file.required' => 'Enter forum file!',
        ];

        $validator = Validator::make($request->all(), $rules, $messages);

        if ($validator->fails()) {
            return redirect()
                ->back()
                ->withErrors($validator)
                ->withInput();
        }

        $filePath = null;
        if ($request->hasFile('file')) {
            $file = $request->file('file');
            $filename = time() . '_' . $file->getClientOriginalName();
            $path = public_path("forum");
            $file->move($path, $filename);
            $filePath = "forum/$filename";
        }


        $type = $request->file_type ?? 0;
        
        $post = ForumPost::create([
            'user_id' => Auth::id(),
            'title' => $request->title,
            'description' => $request->description,
            'file_type' => $type,
            'file' => $filePath, // Store the filename or path
            'active_status' => 0,
            'created_by' => Auth::id(),
        ]);
        

        if ($post) {
            Flash::success('Forum created successfully!');
            return redirect('/customer/forums');
        } else {
            Flash::success('Oops! There is a problem!');
        }

    }
}
