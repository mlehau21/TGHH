<?php

namespace App\Http\Controllers;

use App\Models\ForumFiles;
use App\Models\ForumPost;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Laracasts\Flash\Flash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\File;

class ForumController extends Controller
{
    public function index(Request $request)
    {
        $title = $request->title;
        $user = auth()->user();
        if ($user->can('manage_forum')) {
            $data['posts'] = ForumPost::latest()
                ->when($title, function ($query) use ($title) {
                    $query->where('title', $title);
                })
                ->paginate(10);
        } else {
            $data['posts'] = ForumPost::latest()
                ->where('created_by', auth()->user()->id)
                ->when($title, function ($query) use ($title) {
                    $query->where('title', 'like', '%' . $title . '%');
                })
                ->paginate(10);
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
        $photos = 0;
        $videos = 0;

        $rules = [
            'title' => 'nullable|string|max:256',
            'description' => 'nullable|string|max:1000',
        ];

        if ($request->photo) {
            $rules['photo.*'] = 'required|image|mimes:jpeg,png,gif|max:2048';
            $messages['photo.*.required'] = 'Please choose the right photo!';
            $photos = count($request->photo);
        }
        
        if ($request->video) {
            $rules['video.*'] = 'required|file|mimetypes:video/mp4,video/avi,video/quicktime|max:20480';
            $messages['video.*.required'] = 'Please choose the right video!';
            $videos = count($request->video);
        }

        $messages = [
            'title.required' => 'Enter forum title!',
            'description.required' => 'Enter forum description!',
        ];

        $validator = Validator::make($request->all(), $rules, $messages);

        if ($validator->fails()) {
            return redirect()
                ->back()
                ->withErrors($validator)
                ->withInput();
        }
        $post = ForumPost::create([
            'user_id' => Auth::id(),
            'title' => $request->title,
            'description' => $request->description,
            'active_status' => 0,
            'created_by' => Auth::id(),
        ]);

        if ($photos > 0) {
            for ($i = 0; $i < $photos; $i++) {
                $photoPath = null;
                $file = $request->file('photo')[$i];
                $filename = time() . '_' . $file->getClientOriginalName();
                $path = public_path('forum');
                $file->move($path, $filename);
                $photoPath = "forum/$filename";
    
                ForumFiles::create([
                    'forum_post_id' => $post->id,
                    'file_type' => 1,
                    'file' => $photoPath, // Store the filename or path
                ]);
            }
        }

        if ($videos > 0) {
            for ($i = 0; $i < $videos; $i++) {
                $videoPath = null;
                $file = $request->file('video')[$i];
                $filename = time() . '_' . $file->getClientOriginalName();
                $path = public_path('forum');
                $file->move($path, $filename);
                $videoPath = "forum/$filename";
    
                ForumFiles::create([
                    'forum_post_id' => $post->id,
                    'file_type' => 2,
                    'file' => $videoPath, // Store the filename or path
                ]);
            }
        }

        if ($post) {
            Flash::success('Forum created successfully!');
            return redirect('/user/forums');
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
            'id' => 'required|numeric',
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
            return redirect('/user/forums');
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
