@extends('layouts.app')
@section('title')
    {{ __('messages.post.posts') }}
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
                <div class="row">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-body">
                                <div>
                                    <div class="p-0">
                                        <div class="mb-5">
                                            <input type="hidden" name="id" id="hiddenId" value="">
                                            <label for="title" class="form-label required">Title:</label>
                                            <input class="form-control" placeholder="Title" required="" id="postTitle"
                                                name="title" type="text">

                                        </div>
                                    </div>
                                    <div class="px-0">
                                        <div class="mb-5">
                                            <label for="short_description" class="form-label required "> Description:</label>
                                            <textarea class="form-control" id="description" placeholder="Short Description" required="" rows="3"
                                                name="description" cols="50"></textarea>
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
                                            <option value="0" data-select2-id="select2-data-26-lzou">No File</option>
                                            <option value="1" data-select2-id="select2-data-26-lzou">Photo</option>
                                            <option value="1" data-select2-id="select2-data-27-732r">Video</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card mb-6">
                            <div class="card-body">
                                <div class="form-group">
                                    <div class="mb-5 col-lg-12">
                                        <label for="image" class="form-label mb-3">File</label>
                                        <input type="file" class="form-control" id="additionalImage"
                                            accept=".png, .jpg, .jpeg,.webp,.svg" name="file"
                                           >
                                    </div>
                                    <div class="mb-5 col-lg-12">
                                        <div class="row">
                                            <div id="preview" class="additional-images">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
{{-- @section('page_js') --}}
{{--    <script src="{{mix('assets/js/add_post/create_edit.js')}}"></script> --}}
{{-- @endsection --}}
