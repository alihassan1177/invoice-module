<?php

namespace App\Http\Controllers\Accounting;

use App\Http\Controllers\Controller;
use App\Models\InvoiceCategory;
use Illuminate\Http\Request;

class InvoiceCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $invoice_categories = InvoiceCategory::latest()->get();
        return view('accounting.income.invoice-categories.index', compact('invoice_categories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('accounting.income.invoice-categories.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = validator()->make($request->all(), [
            'name' => 'required|max:200'
        ]);

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        try {
            InvoiceCategory::create($validator->validated());
        } catch (\Exception $e) {
            info("ERROR : " . $e->getMessage());
        }

        return redirect()->route('income.invoice-categories.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $invoice_category = InvoiceCategory::with('invoices')->findOrFail($id);
        return view('accounting.income.invoice-categories.show', compact('invoice_category'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $invoice_category = InvoiceCategory::findOrFail($id);
        return view('accounting.income.invoice-categories.edit', compact('invoice_category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $invoice_category = InvoiceCategory::findOrFail($id);

        $validator = validator()->make($request->all(), [
            'name' => 'required|max:200'
        ]);

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        try {
            $invoice_category->update($validator->validated());
        } catch (\Exception $e) {
            info("ERROR : " . $e->getMessage());
        }

        return redirect()->route('income.invoice-categories.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $invoice_category = InvoiceCategory::with('invoices')->findOrFail($id);

        try {
            if (!count($invoice_category->invoices) ) {
                $invoice_category->delete();
            }
        } catch (\Exception $e) {
            info("ERROR : " . $e->getMessage());
        }

        return redirect()->route('income.invoice-categories.destroy');
    }
}
