@extends('accounting.layout')
@section('title', 'Invoice Categories' )
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
                            <a href="#">Invoice Category</a>
                        </li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <div class="row">
        <!-- start message area-->
        <div class="col-md-12">
        </div> <!-- end message area-->
        <div class="col-md-12">
            <div class="card">
                <div class="card-header row">

                    <div class="col col-sm-4">
                        <a href="{{ route('income.invoice-categories.create') }}" class="btn btn-sm btn-primary btn-rounded">Add Invoice Category</a>
                    </div>

                    <div class="col col-sm-8">
                        <div class="card-search with-adv-search dropdown">
                            <form action="{{ route('income.invoice-categories.index') }}">
                                <input type="text" name="q" value="{{ request('q') }}" class="form-control global_filter" id="global_filter" placeholder="Search..">
                                <button type="submit" class="btn btn-icon"><i class="ik ik-search"></i></button>
                            </form>
                        </div>
                    </div>

                </div>
                <div class="card-body">
                    <table id="advanced_table" class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if (!count($invoice_categories))
                                <tr>
                                    <td colspan="3">
                                        <p class="text-center">No Categories Found</p>
                                    </td>
                                </tr>
                            @endif

                            @foreach ($invoice_categories as $invoice_category)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $invoice_category->name }}</td>
                                    <td>
                                        <a href="{{ route('income.invoice-categories.show', $invoice_category->id) }}"><i class="ik ik-eye f-16 mr-15 text-primary"></i></a>
                                        <a href="{{ route('income.invoice-categories.edit', $invoice_category->id) }}"><i class="ik ik-edit f-16 mr-15 text-green"></i></a>
                                        <form action="{{ route('income.invoice-categories.destroy', $invoice_category->id) }}" method="post">
                                            @csrf
                                            @method("DELETE")
                                            <button onclick="return confirm('Are you sure you want to delete this item?')" type="submit" class="p-0 m-0 btn bg-white">
                                                <i class="ik ik-trash-2 f-16 text-red"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection