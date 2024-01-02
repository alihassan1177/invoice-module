<?php

namespace App\Http\Controllers\Accounting;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class InvoiceController extends Controller
{
    function index()
    {
        return view('accounting.income.invoice.list');
    }

    function create()
    {
        return view('accounting.income.invoice.create');
    }

    function edit()
    {
        return view('accounting.income.invoice.edit');
    }

    function view()
    {
        return view('accounting.income.invoice.view');
    }
}
