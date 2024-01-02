@extends('accounting.layout')
@section('title', 'Create Invoice')
@section('content')
<div class="container-fluid">
    <div class="page-header">
        <div class="row align-items-end">
            <div class="col-lg-8">
                <div class="page-header-title">
                    <i class="ik ik-user-plus bg-blue"></i>
                    <div class="d-inline">
                        <h5>Income</h5>
                        <span>Invoice Category</span>
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
                            <a href="#">Income</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{ route('income.invoice-categories.index') }}">Invoice Category</a>
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
                    <h3>Invoice Category Form</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('income.invoice-categories.store') }}" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="name" class="form-label">Category Name</label>
                            <input required maxlength="256" value="{{ old('name') }}" placeholder="Enter category name" type="text" class="form-control" name="name" id="name">
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