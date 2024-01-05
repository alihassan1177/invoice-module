@extends('accounting.layout')
@section('title', 'Create Invoice')
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
                            <a href="{{url('income/invoice')}}">Invoice</a>
                        </li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <form method="POST" id="invoice-form" action="{{ route('income.invoice.store') }}">
        @csrf
        <div class="row">
            <div class="col-md-3 pr-0">
                <div class="card mb-0">
                    <div class="card-body">

                        <input type="hidden" name="products" id="products">
                        <input type="hidden" name="total_amount" id="total_amount">
                        <input type="hidden" name="tax_percentage" id="tax_percentage">

                        <div class="form-group">
                            <label>Tax Rate</label>
    
                            <select id="tax_rate" class="form-control">
                                <option selected="selected" value="">Select Country</option>
                                @foreach ($countries as $country)
                                <option value="{{ $country->tax->tax_percentage }}">{{ $country->name }} {{
                                    $country->tax->tax_percentage."%" }}</option>
                                @endforeach
                            </select>
                            @error('user_id')
                            <span class="text-danger">
                                {{ $message }}
                            </span>
                            @enderror
    
                        </div>
    
                        <div class="form-group">
                            <label>Customer</label>
    
                            <select name="user_id" class="form-control">
                                <option selected="selected" value="">Select Customer</option>
                                @foreach ($customers as $customer)
                                <option value="{{ $customer->id }}">{{ $customer->name }}</option>
                                @endforeach
    
                            </select>
                            @error('user_id')
                            <span class="text-danger">
                                {{ $message }}
                            </span>
                            @enderror
    
                        </div>
    
                        <div class="form-group">
                            <label>Issue Date</label>
                            <input type="date" name="issue_date" class="form-control" placeholder="Select Date">
                            @error('issue_date')
                            <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label>Due Date</label>
                            <input type="date" name="due_date" class="form-control" placeholder="Select Date">
                            @error('due_date')
                            <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
    
                        <div class="form-group">
                            <label>Invoice Category</label>
    
                            <select name="invoice_category_id" class="form-control">
                                <option selected="selected" value="">Select Category</option>
                                @foreach ($invoice_categories as $invoice_category)
                                <option value="{{ $invoice_category->id }}">{{ $invoice_category->name }}</option>
                                @endforeach
                            </select>
                            @error('invoice_category_id')
                            <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
    
                        <div class="form-group">
                            <label>Note</label>
                            <textarea name="notes" class="form-control h-123" placeholder="Enter Note"></textarea>
                            @error('notes')
                            <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
    
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="card mb-0">
                    <div class="card-header">
                        <h3>Product & Services</h3>
                        <div class="card-header-right">
                            <button type="button" class="btn btn-success add-item"><i class="ik ik-plus"></i> Add
                                Item</button>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="salestable">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="wp-40">Item</th>
                                        <th class="wp-10">Quantity</th>
                                        <th class="wp-20">Unit Price</th>
                                        <th class="wp-15">Discount</th>
                                        <th class="wp-15 text-right">Sub Total</th>
                                        <th class="wp-15 text-right"></th>
                                    </tr>
                                </thead>
                                <tbody class="product-body">
    
    
    
    
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th class="border-0" colspan="3"></th>
                                        <th class="border-0">Total</th>
                                        <th id="total" class="text-right border-0">0</th>
                                        <td class="border-0"></td>
                                    </tr>
    
                                    <tr>
                                        <td class="border-0" colspan="3"></td>
                                        <td>Tax (<span id="tax-per">0</span>%)</td>
                                        <td id="tax" class="text-right">0</td>
                                        <td></td>
                                    </tr>
    
                                    <tr>
                                        <th class="border-0" colspan="3"></th>
                                        <th>Grand Total</th>
                                        <th id="grand-total" class="text-right">0.00</th>
                                        <th></th>
                                    </tr>
                                </tfoot>
                            </table>
                            <div class="form-group text-right">
                                <div type="submit" class="submit-btn btn btn-primary">Save</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>


<script>



    let doc = document
    
    let submitButton = doc.querySelector(".submit-btn")
    submitButton.addEventListener("click", ()=> {
        doc.querySelector("#invoice-form").submit()
    })

    
    let countries = {!! json_encode($countries) !!}
    let taxPercentageSpan = doc.querySelector("#tax-per")
    let taxRateSelect = doc.querySelector("#tax_rate")
    let rowWrapper = doc.querySelector(".product-body")
    let addProductItemBtn = doc.querySelector(".add-item")
    let totalSpan = doc.querySelector("#total")
    let taxSpan = doc.querySelector("#tax")
    let grandTotalSpan = doc.querySelector("#grand-total")
    
    let totalAmountInp = doc.querySelector("#total_amount")
    let productsInp = doc.querySelector("#products")
    let taxPercentInp = doc.querySelector("#tax_percentage")

    let products = {}
    let state = {
        count : 0,
        total : 0,
        tax : 0,
        grand_total : 0,
        tax_amount : 0
    }

    function addProductItem(index) {
        products[index] = {
            unit_price : 0,
            discount : 0,
            quantity : 0,
            sub_total : 0
        }

        let productItem = `
            <td class="pl-0">
                <input required data-index="${index}" type="text" oninput="getValue(this)" name="item" class="form-control hm-30"
                    placeholder="Enter product/service name">
            </td>
            <td><input required data-index="${index}" oninput="getValue(this)" min="0" value="0" type="number" name="quantity" class="form-control w-60 text-center hm-30"
                    placeholder="Quantity"> </td>
            <td><input required data-index="${index}" oninput="getValue(this)" min="0" value="0" type="number" name="unit_price" class="form-control  hm-30"
                    placeholder="price"></td>
            <td><input required data-index="${index}" oninput="getValue(this)" min="0" value="0" type="number" name="discount" class="form-control w-60 text-center hm-30"
                    placeholder="discount"></td>
            <td data-index="${index}" class="text-right sub-total">0.00</td>
            <td><i data-index="${index}" class="ik ik-trash-2 f-16 text-red remove-second-parent cursor-pointer"></i>
            </td>
        `

        let tr = doc.createElement("tr")
        tr.classList.add("base-tr")
        tr.innerHTML = productItem
        rowWrapper.appendChild(tr)

        let removeItemBtn = doc.querySelector(`.remove-second-parent[data-index="${index}"]`)
        removeItemBtn.addEventListener('click', ()=> {
            delete products[index]
            calculateTotal()
        })
            
    }

    addProductItem(state.count)

    function getValue(e) {
        let currentItem = products[e.dataset.index]
        currentItem[e.name] = e.value
        
        let subtotalSpan = doc.querySelector(`.sub-total[data-index='${e.dataset.index}']`)
        let subtotal = (currentItem.unit_price * currentItem.quantity) - currentItem.discount
        
        subtotalSpan.innerText = subtotal
        currentItem.sub_total = subtotal
        // console.log(subtotal)
        // console.log(state)        

        calculateTotal()

        productsInp.value = JSON.stringify(products)
    }

    function calculateTotal() {
        let total = 0
        Object.keys(products).forEach(key => {
            let product = products[key]
            total += product.sub_total
        });
        state.total = total
        totalSpan.innerText = state.total

        totalAmountInp.value = state.total

        calculateTax()
        calculateGrandTotal()
    }

    function calculateTax(){
        state.tax_amount = (state.tax / 100) * state.total
        taxSpan.innerText = state.tax_amount
    }

    function calculateGrandTotal() {
        state.grand_total = state.total + state.tax_amount
        grandTotalSpan.innerText = state.grand_total
    }

    addProductItemBtn.addEventListener("click", ()=>{
        state.count += 1
        addProductItem(state.count)
    })
    
    taxRateSelect.addEventListener('change', (e)=>{
        state.tax = e.target.value == "" ? 0 : e.target.value
        taxPercentageSpan.innerText = state.tax 

        taxPercentInp.value = state.tax

        calculateTax()
        calculateGrandTotal()
    })


</script>

@endsection