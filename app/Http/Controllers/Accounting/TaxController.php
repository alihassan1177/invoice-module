<?php

namespace App\Http\Controllers\Accounting;

use App\Http\Controllers\Controller;
use App\Models\Country;
use Illuminate\Http\Request;
use App\Models\Tax;

class TaxController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $taxes = Tax::with('country')->latest()->get();
        return view('accounting.taxes.index', compact('taxes'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $countries = Country::doesntHave('tax')->get();
        return view('accounting.taxes.create', compact('countries'));
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
            "country_id" => "required|exists:countries,id",
            "tax_percentage" => "required|integer|max:100"
        ]);

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        try {
            Tax::create($validator->validated());
        } catch (\Exception $e) {
            info("ERROR : " .$e->getMessage());
        }

        return redirect()->route('taxes.index');
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $tax = Tax::findOrFail($id);
        $countries = Country::all();
        return view('accounting.taxes.edit', compact('tax', 'countries'));
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
        $tax = Tax::findOrFail($id);
        $validator = validator()->make($request->all(), [
            'tax_percentage' => 'required|integer|max:100'
        ]);

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        try {
            $tax->update($validator->validated());
        } catch (\Exception $e) {
            info("Error : " . $e->getMessage());
        }

        return redirect()->route('taxes.index');
    }

    function destroy($id) {
        $tax = Tax::findOrFail($id);
        $tax->delete();
        return redirect()->route('taxes.index');        
    }

}
