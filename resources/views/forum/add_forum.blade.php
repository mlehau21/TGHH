@extends('layouts.app')
@section('title')
    Fourm Add
@endsection
@section('content')
    @php $styleCss = 'style' @endphp
    <div class="container-fluid">
        <div class="d-sm-flex justify-content-between mb-3 livewire-search-box  mb-5">
            <div class="d-sm-flex align-items-center w-100 text-end">
                <div class="mb-3 mb-sm-0">

                </div>
                <a href="{{ url('customer/forums') }}" type="button" class="btn btn-primary mx-2 ms-auto">
                    Forums List
                </a>
            </div>
        </div>
        @include('flash::message')
        <div>
            <div class="overflow-y-visible">
                <form action="{{ url('customer/forum-store') }}" enctype="multipart/form-data" method="POST">
                    @csrf
                    <div class="row">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-body">
                                    <div>
                                        <div class="p-0">
                                            <div class="mb-5">
                                                <label for="title" class="form-label required">Title:</label>
                                                <input class="form-control" placeholder="Title" required=""
                                                    id="postTitle" name="title" type="text"
                                                    value="{{ old('title') }}">
                                                @error('title')
                                                    <strong class="text-danger">{{ $message }}</strong>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="px-0">
                                            <div class="mb-5">
                                                <label for="short_description" class="form-label required ">
                                                    Description:</label>
                                                <textarea class="form-control" id="description" placeholder="Short Description" required="" rows="3"
                                                    name="description" cols="50">{{ old('description') }}</textarea>
                                                @error('description')
                                                    <strong class="text-danger">{{ $message }}</strong>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card mb-6">
                                <div class="card-body">
                                    <div class="col-lg-12 px-0">
                                        <div class="mb-5">
                                            <label for="created_by" class="form-label mb-3">File Type</label>
                                            <select class="form-select form-select-solid select2-hidden-accessible"
                                                id="postCreatedBy" data-control="select2" name="file_type" tabindex="-1"
                                                aria-hidden="true" data-select2-id="select2-data-postCreatedBy">
                                                <option selected="selected" value=""
                                                    data-select2-id="select2-data-22-wg6h">File Type</option>
                                                <option value="0" data-select2-id="select2-data-26-lzou" @if(old('file_type') == '0') selected @endif>No File
                                                </option>
                                                <option value="1" data-select2-id="select2-data-26-lzou" @if(old('file_type') == '1') selected @endif>Photo</option>
                                                <option value="2" data-select2-id="select2-data-27-732r" @if(old('file_type') == '2') selected @endif>Video</option>
                                            </select>
                                            @error('file_type')
                                                <strong class="text-danger">{{ $message }}</strong>
                                            @enderror
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card mb-6">
                                <div class="card-body">
                                    <div class="form-group">
                                        <div class="mb-5 col-lg-12">
                                            <label for="file" class="form-label mb-3">File</label>
                                            <input type="file" class="form-control" id="additionalFile" name="file" accept="image/*, video/*">
                                            <!-- The "accept" attribute specifies the types of files that can be selected. "image/*" allows images, and "video/*" allows videos. -->
                                        </div>
                                        <div class="mb-5 col-lg-12">
                                            <div class="row">
                                                <div id="preview" class="additional-files">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    @error('file')
                                        <strong class="text-danger">{{ $message }}</strong>
                                    @enderror
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <button type="submit" class="btn btn-success">Save</button>
                </form>
            </div>
        </div>
    </div>
@endsection
{{-- @section('page_js') --}}
{{--    <script src="{{mix('assets/js/add_post/create_edit.js')}}"></script> --}}
{{-- @endsection --}}