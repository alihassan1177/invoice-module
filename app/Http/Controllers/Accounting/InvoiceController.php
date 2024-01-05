<?php

namespace App\Http\Controllers\Accounting;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\{
    Invoice,
    InvoiceCategory,
    User,
    Country
};

class InvoiceController extends Controller
{
    function index()
    {
        $invoices = Invoice::latest()->paginate(10);
        return view('accounting.income.invoice.list', compact('invoices'));
    }

    function create()
    {
        $customers = User::role('customer')->get();
        $invoice_categories = InvoiceCategory::all();
        $countries = Country::whereHas('tax')->with('tax')->get();
        return view('accounting.income.invoice.create', compact('customers', 'invoice_categories', 'countries'));
    }

    function store(Request $request)
    {
        $validator  = validator()->make($request->all(), [
            ''
        ]);
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
