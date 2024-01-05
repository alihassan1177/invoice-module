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
            'invoice_category_id' => "required|exists:invoice_categories,id",
            'user_id' => 'required|exists:users,id',
            'products' => 'required',
            'tax_percentage' => 'required',
            'total_amount' => 'required',
            'notes' => 'required',
            'issue_date' => 'required',
            'due_date' => 'required'
        ]);

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        try {
            Invoice::create($validator->validated());
        } catch (\Exception $e) {
            info("ERROR : " . $e->getMessage());
        }

        return redirect()->route('income.invoice.index');
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
