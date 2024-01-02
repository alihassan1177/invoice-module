@extends('accounting.layout')
@section('title', 'Invoice')
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
                            <form action="">
                                <input type="text" class="form-control global_filter" id="global_filter" placeholder="Search.." required="">
                                <button type="submit" class="btn btn-icon"><i class="ik ik-search"></i></button>
                                <button type="button" id="adv_wrap_toggler" class="adv-btn ik ik-chevron-down dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
                                <div class="adv-search-wrap dropdown-menu dropdown-menu-right" aria-labelledby="adv_wrap_toggler">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control column_filter" id="col1_filter" placeholder="Name" data-column="1">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control column_filter" id="col2_filter" placeholder="Year" data-column="2">
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-theme">Search</button>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
                <div class="card-body">
                    <table id="advanced_table" class="table">
                        <thead>
                            <tr>
                                <th>Category ID</th>
                                <th>Name</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($invoice_categories as $invoice_category)
                                <tr>
                                    <td>{{ $invoice_category->id }}</td>
                                    <td>{{ $invoice_category->name }}</td>
                                    <td>
                                        <a href="{{ route('income.invoice-categories.show', $invoice_category->id) }}"><i class="ik ik-eye f-16 mr-15 text-primary"></i></a>
                                        <a href="{{ route('income.invoice-categories.edit', $invoice_category->id) }}"><i class="ik ik-edit f-16 mr-15 text-green"></i></a>
                                        <form action="{{ route('income.invoice-categories.destroy', $invoice_category->id) }}" method="post">
                                            @method("DELETE")
                                            <i class="ik ik-trash-2 f-16 text-red"></i>
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