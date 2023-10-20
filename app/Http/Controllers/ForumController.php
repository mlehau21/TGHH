<?php

namespace App\Http\Controllers;

use App\Models\ForumPost;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Laracasts\Flash\Flash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\File;

class ForumController extends Controller
{
    public function index()
    {
        if (auth()->user()->getRoleNames()[0] != "admin") {
            $data['posts'] = ForumPost::latest()->where('created_by', auth()->user()->id)->paginate(10);
        } else {
            $data['posts'] = ForumPost::latest()->paginate(10);
        }
        
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
            $path = public_path('forum');
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

    public function edit($post_id)
    {
        $data['post'] = ForumPost::findOrFail($post_id);
        return view('forum.edit_forum', $data);

    }
    public function show($post_id)
    {
        $data['post'] = ForumPost::findOrFail($post_id);
        return view('forum.view_forum', $data);
    }
    public function activeInactive($post_id, $status)
    {
        ForumPost::findOrFail($post_id)->update(['active_status' => $status]);
        if ($status == 1) {
            Flash::success('Forum Activated Done!');
        } else {
            Flash::success('Forum Inactivated Done!');
        }
        
        return redirect()->back();
    }

    public function update(Request $request)
    {
        
        $rules = [
            'id' => "required|numeric",
            'title' => 'nullable|string|max:256',
            'description' => 'nullable|string|max:1000',
            'file_type' => 'required|numeric',
        ];

        if ($request->file_type == 1) {
            $rules['file'] = 'sometimes|image|mimes:jpeg,png,gif|max:2048';
        } elseif ($request->file_type == 2) {
            $rules['file'] = 'sometimes|file|mimetypes:video/mp4,video/avi,video/quicktime|max:20480';
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
        $post = ForumPost::findOrFail($request->id);
        $filePath = $post->file;
        if ($request->hasFile('file')) {
            File::delete(public_path($filePath));
            $file = $request->file('file');
            $filename = time() . '_' . $file->getClientOriginalName();
            $path = public_path('forum');
            $file->move($path, $filename);
            $filePath = "forum/$filename";
        }

        $type = $request->file_type ?? 0;

        $post->update([
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

    public function delete($post_id)
    {
        ForumPost::findOrFail($post_id)->delete();
        Flash::success('Forum Deleted Successfull!');
        return redirect()->back();
    }
}
