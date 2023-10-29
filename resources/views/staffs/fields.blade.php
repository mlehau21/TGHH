<div class="row">

    {{-- @if (!empty($staff->roles[0]) ? $staff->roles[0]->name != 'customer' : true) --}}
    <div class="col-lg-6">
        <P><strong>First Name:</strong> {{ isset($staff) ? $staff->first_name : null }}</P>
        <P><strong>Last Name:</strong> {{ isset($staff) ? $staff->last_name : null }}</P>
        <P><strong>Email Name:</strong> {{ isset($staff) ? $staff->email : null }}</P>
        <P><strong>Contact Name:</strong> {{ isset($staff) ? $staff->contact : null }}</P>
        <div class="mb-5">
            {{ Form::label('role', __('messages.staff.role') . ':', ['class' => 'form-label required']) }}
            {{ Form::select('role', $roles, !empty($staff->roles[0]) ? $staff->roles[0]->id : null, ['class' => 'form-select io-select2', 'id' => 'staffsRole', 'required', 'data-control' => 'select2', 'placeholder' => __('messages.staff.role')]) }}
        </div>
    </div>
    {{-- @endif --}}


    <div class="col-lg-6 mb-7 d-flex">
        <div class="mb-3 mx-5 col-lg-6" io-image-input="true">
            <label for="exampleInputImage" class="form-label">{{ __('messages.staff.profile') }}:</label>
            <div class="d-block">
                <div class="image-picker">
                    @php
                        $style = 'style="background-image: url(' . (!empty($staff->profile_image) ? $staff->profile_image : asset('images/avatar.png')) . ')"';
                    @endphp
                    <div class="image previewImage" id="exampleInputImage" {!! $style !!}>
                    </div>
                    </span>
                </div>
            </div>
        </div>
        <div class="mb-3 mx-5 col-lg-6">
            <label for="exampleInputImage" class="form-label">{{ __('messages.staff.cover_image') }}:</label>
            <div class="d-block">
                <div class="image-picker">
                    @php
                        $style = 'style="background-image: url(' . (!empty($staff->profile_image) ? $staff->profile_image : asset('assets/image/post-image/post-17.jpg')) . ')"';
                    @endphp
                    <div class="image previewImage" id="exampleInputImage" {!! $style !!}>
                    </div>
                    </span>
                </div>
            </div>
        </div>
    </div>
    <div class="d-flex">
        {{ Form::submit(__('messages.common.save'), ['class' => 'btn btn-primary me-2']) }}
        <a href="{{ route('staff.index') }}" type="reset"
            class="btn btn-secondary">{{ __('messages.common.discard') }}</a>
    </div>
</div>
