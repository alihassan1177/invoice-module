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
                        <span>Invoice</span>
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
                            <a href="#">Invoice</a>
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
                    <div class="col col-sm-2">
                        <a href="{{ route('income.invoice.create') }}" class="btn btn-sm btn-primary btn-rounded">Add Invoice </a>
                    </div>

                </div>
                <div class="card-body">
                    <table id="advanced_table" class="table">
                        <thead>
                            <tr>
                                <th>Invoice No</th>
                                <th>Customer</th>
                                <th>Category</th>
                                <th>Issue Date</th>
                                <th>Due Date</th>
                                <th>Due Amount</th>
                                <th>Total Amount</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>

                            @if (!count($invoices))
                                <tr>
                                    <td colspan="10">
                                        <p class="text-center">No Related Invoices</p>
                                    </td>
                                </tr>
                            @endif

                            @foreach ($invoices as $invoice)
                            <tr>
                                <td>#{{ $invoice->invoice_no }}</td>
                                <td>{{ $invoice->user->name }}</td>
                                <td>{{ $invoice->invoice_category->name }}</td>
                                <td>{{ \Carbon\Carbon::parse($invoice->issue_date)->isoFormat('LL') }}</td>
                                <td>{{ \Carbon\Carbon::parse($invoice->due_date)->isoFormat('LL') }}</td>
                                <td>{{ $invoice->due_amount }}</td>
                                <td>{{ $invoice->total_amount }}</td>
                                <td>{{ $invoice->formatted_status }}</td>
                                <td>
                                    <a href="{{ route('income.invoice.view', $invoice->id) }}"><i class="ik ik-eye f-16 mr-15 text-primary"></i></a>
                                    <a href="{{ route('income.invoice.edit', $invoice->id) }}"><i class="ik ik-edit f-16 mr-15 text-green"></i></a>
                                </td>
                            </tr>
                            @endforeach

                        </tbody>
                        <tfoot>
                            {{ $invoices->links() }}
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection