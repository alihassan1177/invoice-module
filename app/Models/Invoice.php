<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    use HasFactory;

    protected $fillable = [
        "invoice_no",
        "invoice_category_id",
        "user_id",
        "issue_date",
        "due_date",
        "total_amount",
        "paid_amount",
        "tax_percentage",
        "products",
        "status",
        "notes"
    ];

    function invoice_category()  {
        return $this->hasOne(InvoiceCategory::class, "invoice_category_id", "id");
    }

    function user() {
        return $this->hasOne(User::class, "user_id", "id");
    }

    function getDueAmountAttribute() {
        if ($this->paid_amount) {
            return $this->total_amount - $this->paid_amount;
        }

        return $this->total_amount;
    }

    function getFormattedStatusAttribute() {
        return strtoupper(str_replace("_", "", $this->status));        
    }
}
