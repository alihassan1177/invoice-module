@extends('accounting.layout')
@section('title', 'Taxes' )
@section('content')
<div class="container-fluid">
    <div class="page-header">
        <div class="row align-items-end">
            <div class="col-lg-8">
                <div class="page-header-title">
                    <i class="ik ik-user-plus bg-blue"></i>
                    <div class="d-inline">
                        <h5>Accounting</h5>
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
                            <a href="#">Tax</a>
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
                        <a href="{{ route('taxes.create') }}" class="btn btn-sm btn-primary btn-rounded">Add Tax</a>
                    </div>

                    

                </div>
                <div class="card-body">
                    <table id="advanced_table" class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Country</th>
                                <th>Tax Percentage</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if (!count($taxes))
                                <tr>
                                    <td colspan="4">
                                        <p class="text-center">No Results Found</p>
                                    </td>
                                </tr>
                            @endif

                            @foreach ($taxes as $tax)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $tax->country->name }}</td>
                                    <td>{{ $tax->tax_percentage."%" }}</td>
                                    <td>
                                        <a href="{{ route('taxes.edit', $tax->id) }}"><i class="ik ik-edit f-16 mr-15 text-green"></i></a>
                                        <form action="{{ route('taxes.destroy', $tax->id) }}" method="post">
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