<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddTypesToPokemons extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('pokemons', function (Blueprint $table) {
            $table->integer('type1')->after('name');
            $table->integer('type2')->after('type1');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('pokemons', function (Blueprint $table) {
            $table->dropColumn('type1');
            $table->dropColumn('type2');
        });
    }
}
