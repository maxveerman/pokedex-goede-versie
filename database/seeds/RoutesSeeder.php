<?php

use Illuminate\Database\Seeder;
use App\Route;

class RoutesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $limit = 29;

        for($i = 1; $i < $limit; $i++){
            Route::create([
                'name' => 'Route '. $i
                ]);
        }
    }
}
