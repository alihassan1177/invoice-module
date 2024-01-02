@extends('accounting.layout')
@section('title', 'View Invoice')
@section('content')
<div class="container-fluid">
    <div class="page-header">
        <div class="row align-items-end">
            <div class="col-lg-8">
                <div class="page-header-title">
                    <i class="ik ik-user-plus bg-blue"></i>
                    <div class="d-inline">
                        <h5>Income</h5>
                        <span>View Invoice Category</span>
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
            <div class="card ">
                <div class="card-header">
                    <h3>Invoice Category Details</h3>
                </div>
                <div class="card-body">
                    <p><strong>Category Name</strong></p>
                    <p>{{ $invoice_category->name  }}</p>
                </div>
            </div>

            <div class="card mb-0">
                <div class="card-header">
                    <h3>Related Invoices</h3>
                </div>
                <div class="card-body">
                    <table id="advanced_table" class="table">
                        <thead>
                            <tr>
                                <th class="nosort" width="10">
                                    <label class="custom-control custom-checkbox m-0">
                                        <input type="checkbox" class="custom-control-input" id="selectall" name="" value="option2">
                                        <span class="custom-control-label">&nbsp;</span>
                                    </label>
                                </th>
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
                            <tr>
                                <td>
                                    <label class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input select_all_child" id="" name="" value="option2">
                                        <span class="custom-control-label">&nbsp;</span>
                                    </label>
                                </td>
                                <td>#INV000001</td>
                                <td>Alex</td>
                                <td>Sale</td>
                                <td>Feb 12, 2023</td>
                                <td>April 12, 2023</td>
                                <td>500</td>
                                <td>12300</td>
                                <td>
                                    <label class="badge badge-info">Draft</label>
                                </td>
                                <td>
                                    <a href="{{url('income/invoice/view/INV000001')}}"><i class="ik ik-eye f-16 mr-15 text-primary"></i></a>
                                    <a href="{{url('income/invoice/edit/1')}}"><i class="ik ik-edit f-16 mr-15 text-green"></i></a>
                                    <a href="#!"><i class="ik ik-copy f-16 mr-15 text-warning"></i></a>
                                    <a href="#!"><i class="ik ik-trash-2 f-16 text-red"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input select_all_child" id="" name="" value="option2">
                                        <span class="custom-control-label">&nbsp;</span>
                                    </label>
                                </td>
                                <td>#INV000002</td>
                                <td>Alex</td>
                                <td>Sale</td>
                                <td>Feb 11, 2023</td>
                                <td>April 12, 2023</td>
                                <td>500</td>
                                <td>12300</td>
                                <td>
                                    <label class="badge badge-info">Draft</label>
                                </td>
                                <td>
                                    <a href="{{url('income/invoice/view/INV000002')}}"><i class="ik ik-eye f-16 mr-15 text-primary"></i></a>
                                    <a href="{{url('income/invoice/edit/1')}}"><i class="ik ik-edit f-16 mr-15 text-green"></i></a>
                                    <a href="#!"><i class="ik ik-copy f-16 mr-15 text-warning"></i></a>
                                    <a href="#!"><i class="ik ik-trash-2 f-16 text-red"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input select_all_child" id="" name="" value="option2">
                                        <span class="custom-control-label">&nbsp;</span>
                                    </label>
                                </td>
                                <td>#INV000003</td>
                                <td>Michael</td>
                                <td>Sale</td>
                                <td>Feb 9, 2023</td>
                                <td>April 12, 2023</td>
                                <td>500</td>
                                <td>12300</td>
                                <td>
                                    <label class="badge badge-info">Sent</label>
                                </td>
                                <td>
                                    <a href="{{url('income/invoice/view/INV000003')}}"><i class="ik ik-eye f-16 mr-15 text-primary"></i></a>
                                    <a href="{{url('income/invoice/edit/1')}}"><i class="ik ik-edit f-16 mr-15 text-green"></i></a>
                                    <a href="#!"><i class="ik ik-copy f-16 mr-15 text-warning"></i></a>
                                    <a href="#!"><i class="ik ik-trash-2 f-16 text-red"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input select_all_child" id="" name="" value="option2">
                                        <span class="custom-control-label">&nbsp;</span>
                                    </label>
                                </td>
                                <td>#INV000004</td>
                                <td>Jessica</td>
                                <td>Sale</td>
                                <td>Feb 8, 2023</td>
                                <td>April 12, 2023</td>
                                <td>500</td>
                                <td>12300</td>
                                <td>
                                    <label class="badge badge-success">Paid</label>
                                </td>
                                <td>
                                    <a href="{{url('income/invoice/view/INV000004')}}"><i class="ik ik-eye f-16 mr-15 text-primary"></i></a>
                                    <a href="{{url('income/invoice/edit/1')}}"><i class="ik ik-edit f-16 mr-15 text-green"></i></a>
                                    <a href="#!"><i class="ik ik-copy f-16 mr-15 text-warning"></i></a>
                                    <a href="#!"><i class="ik ik-trash-2 f-16 text-red"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input select_all_child" id="" name="" value="option2">
                                        <span class="custom-control-label">&nbsp;</span>
                                    </label>
                                </td>
                                <td>#INV000005</td>
                                <td>Emily</td>
                                <td>Sale</td>
                                <td>Feb 6, 2023</td>
                                <td>April 12, 2023</td>
                                <td>500</td>
                                <td>12300</td>
                                <td>
                                    <label class="badge badge-danger">Declined</label>
                                </td>
                                <td>
                                    <a href="{{url('income/invoice/view/INV000005')}}"><i class="ik ik-eye f-16 mr-15 text-primary"></i></a>
                                    <a href="{{url('income/invoice/edit/1')}}"><i class="ik ik-edit f-16 mr-15 text-green"></i></a>
                                    <a href="#!"><i class="ik ik-copy f-16 mr-15 text-warning"></i></a>
                                    <a href="#!"><i class="ik ik-trash-2 f-16 text-red"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input select_all_child" id="" name="" value="option2">
                                        <span class="custom-control-label">&nbsp;</span>
                                    </label>
                                </td>
                                <td>#INV000006</td>
                                <td>David</td>
                                <td>Sale</td>
                                <td>Feb 5, 2023</td>
                                <td>April 12, 2023</td>
                                <td>500</td>
                                <td>12300</td>
                                <td>
                                    <label class="badge badge-warning">Partially Paid</label>
                                </td>
                                <td>
                                    <a href="{{url('income/invoice/view/INV000006')}}"><i class="ik ik-eye f-16 mr-15 text-primary"></i></a>
                                    <a href="{{url('income/invoice/edit/1')}}"><i class="ik ik-edit f-16 mr-15 text-green"></i></a>
                                    <a href="#!"><i class="ik ik-copy f-16 mr-15 text-warning"></i></a>
                                    <a href="#!"><i class="ik ik-trash-2 f-16 text-red"></i></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection