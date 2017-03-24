<?php

use Illuminate\Database\Seeder;

class PokemonsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('pokemons')->insert(
            array(
                array('name' => 'Bulbasaur'),
                array('name' => 'Ivysaur'),
                array('name' => 'Venasaur'),
                array('name' => 'Squirtle'),
                array('name' => 'Wartortle'),
                array('name' => 'Blastoise'),
                array('name' => 'Charmander'),
                array('name' => 'Charmeleon'),
                array('name' => 'Charizard'),
            ));
    }
}
