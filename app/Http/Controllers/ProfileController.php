<?php

namespace App\Http\Controllers;

use App\Pokemon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Http\Requests;

class ProfileController extends Controller
{
    public function index(){

        $total = DB::table('pokemons')
            ->pluck('id');

        $pokemontotal = count($total);

        $caught = DB::table('pokemons')
            ->select('caught')
            ->where('caught','=',1)->get();

        $pokemoncaught = count($caught);

        return \View('profile')->with(array('pokemoncaught' => $pokemoncaught,'pokemontotal' => $pokemontotal));
    }
}
