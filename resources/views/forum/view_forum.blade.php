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
                <div class="card-body">Post Description:</div>
                <div class="card-body">
                    <P>{{ $post->description }}</P>
                </div>
               </div>
            </div>
        </div>
    </div>
@endsection
@section('page_js')
@endsection
