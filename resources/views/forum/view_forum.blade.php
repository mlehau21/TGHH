@extends('layouts.app')
@section('title')
    {{ __('messages.post.posts') }}
@endsection
@section('content')
    @php $styleCss = 'style' @endphp
    <div class="container-fluid">
        <div class="d-sm-flex justify-content-between mb-3 livewire-search-box  mb-5">
            <div class="d-sm-flex align-items-center w-100 text-end">
                <a href="{{ url('user/forums') }}" type="button" class="btn btn-primary mx-2 ms-auto">
                    Forums List
                </a>
            </div>
        </div>
        @include('flash::message')
        <div>
            <div class="overflow-y-visible">
                <div class="card">
                    <div class="card-header">
                        <h1>Post Description:</h1>
                    </div>
                    <div class="card-body">
                        <P>{{ $post->description }}</P>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h2>Files</h2>
                    </div>
                    <div class="card-body">
                      <div class="row">
                        @foreach ($post->forum_post_files as $index => $file)
                        @if ($file->file_type == 1)
                            <div class="col-4 px-2 pl-2">
                                <img width="100%" src="{{ asset($file->file) }}"
                                    class="img-fluid mt-2" alt="Post Image 1">
                            </div>
                        @elseif ($file->file_type == 2)
                            <div class="col-4 px-2 pl-2">
                                <video controls class="mt-2" style="width: 100%; height: 100%">
                                    <source src="{{ asset($file->file) }}" type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>
                            </div>
                        @endif
                    @endforeach
                      </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('page_js')
@endsection
