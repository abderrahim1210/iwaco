<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('table_message_contact', function (Blueprint $table) {
            $table->renameColumn('nom','name');
            $table->renameColumn('sujet','subject');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('table_message_contact', function (Blueprint $table) {
            $table->renameColumn('name','nom');
            $table->renameColumn('subject','sujet');
        });
    }
};
