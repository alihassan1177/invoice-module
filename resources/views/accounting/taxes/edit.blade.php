@extends('accounting.layout')
@section('title', 'Edit Tax')
@section('content')
<div class="container-fluid">
    <div class="page-header">
        <div class="row align-items-end">
            <div class="col-lg-8">
                <div class="page-header-title">
                    <i class="ik ik-user-plus bg-blue"></i>
                    <div class="d-inline">
                        <h5></h5>
                        <span>Tax</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <nav class="breadcrumb-container" aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="/accounting"><i class="ik ik-home"></i></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{ route('taxes.index') }}">Tax</a>
                        </li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <div class="card mb-0">
                <div class="card-header">
                    <h3>Tax Form</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('taxes.update', $tax->id) }}" method="post">
                        @method("PUT")
                        @csrf
                        <div class="form-group">
                            <label for="name" class="form-label">Country</label>
                            <select disabled class="form-control">
                                @foreach ($countries as $country)
                                    <option @selected($tax->country_id == $country->id) value="{{ $country->id }}">{!! $country->flag !!} {{ " ".$country->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="name" class="form-label">Tax Percentage</label>
                            <input required maxlength="256" value="{{ old('tax_percentage', $tax->tax_percentage) }}" placeholder="Enter Tax Percentage" type="number" class="form-control" name="tax_percentage" id="tax_percentage">
                            @error('name')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                        <button type="submit" class="btn btn-primary">
                            Save
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection