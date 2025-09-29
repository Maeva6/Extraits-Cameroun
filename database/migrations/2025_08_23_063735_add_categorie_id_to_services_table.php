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
//         Schema::table('services', function (Blueprint $table) {
//     $table->foreignId('categorie_id')
//           ->nullable()
//           ->constrained('categorie')
//           ->onDelete('set null');
// });
Schema::table('services', function (Blueprint $table) {
    if (!Schema::hasColumn('services', 'categorie_id')) {
        $table->unsignedBigInteger('categorie_id');
    }
});


    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
       Schema::table('services', function (Blueprint $table) {
    $table->dropForeign(['categorie_id']);
    $table->dropColumn('categorie_id');
});

    }
};
