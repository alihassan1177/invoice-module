<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('invoices', function (Blueprint $table) {
            $table->id();
            $table->string("invoice_no");
            $table->foreignId("invoice_category_id")->references("id")->on("invoice_categories");
            $table->foreignId("user_id")->references("id")->on("users");
            $table->text("products")->nullable();
            $table->dateTime("issue_date");
            $table->dateTime("due_date");
            $table->integer("total_amount");
            $table->integer("paid_amount");
            $table->integer("tax_percentage");
            $table->text("notes");
            $table->string("status");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('invoices');
    }
};
