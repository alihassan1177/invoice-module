<?php

use App\Http\Controllers\Accounting\InvoiceCategoryController;
use App\Http\Controllers\Accounting\InvoiceController;
use Illuminate\Support\Facades\Route;

Route::get('/accounting', function () { return view('accounting.dashboard'); });

Route::group(["prefix" => "income", "as" => "income."], function(){
    
    Route::group(["prefix" => "invoice", "as" => "invoice."], function(){
        Route::get('/', [InvoiceController::class, 'index'])->name('index');
        Route::get('/create', [InvoiceController::class, 'create'])->name("create");
        Route::get('/edit/{id}', [InvoiceController::class, 'edit'])->name('edit');
        Route::get('/view/{id}', [InvoiceController::class, 'view'])->name('view');
    });

    Route::resource("invoice-categories", InvoiceCategoryController::class);

    Route::get('/revenue', function () { return view('accounting.income.revenue'); })->name('revenue');
});

Route::get('/expense/bill', function () { return view('accounting.expense.bill.list'); });
Route::get('/expense/bill/create', function () { return view('accounting.expense.bill.create'); });
Route::get('/expense/bill/edit/{id}', function () { return view('accounting.expense.bill.edit'); });
Route::get('/expense/bill/view/{invoice_no}', function () { return view('accounting.expense.bill.view'); });
Route::get('/expense/payment', function () { return view('accounting.expense.payment'); });


// Route::get('/banking/account', function () { return view('accounting.banking.account'); });
// Route::get('/banking/transfer', function () { return view('accounting.banking.transfer'); });
// Route::get('/budget-planner', function () { return view('accounting.budget.list'); });
// Route::get('/budget-planner/create', function () { return view('accounting.budget.create'); });
// Route::get('/budget-planner/edit/{id}', function () { return view('accounting.budget.edit'); });
// Route::get('/presale/proposal', function () { return view('accounting.presale.proposal.list'); });
// Route::get('/presale/proposal/create', function () { return view('accounting.presale.proposal.create'); });
// Route::get('/presale/proposal/edit/{id}', function () { return view('accounting.presale.proposal.edit'); });
// Route::get('/presale/retainer', function () { return view('accounting.presale.retainer.list'); });
// Route::get('/presale/retainer/create', function () { return view('accounting.presale.retainer.create'); });
// Route::get('/presale/retainer/edit/{id}', function () { return view('accounting.presale.retainer.edit'); });
// Route::get('/goal', function () { return view('accounting.goal'); });
// Route::get('/assets', function () { return view('accounting.assets'); });