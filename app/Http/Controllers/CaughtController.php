<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use Illuminate\Support\Facades\DB;

class CaughtController extends Controller
{
    public function index(){

        $routes = DB::table('routes')
            ->select('name','id')->get();

        $pokemons = DB::table('pokemons')
            ->where('caught','=',0)->get();

        return \View('caught')->with(array('routes' => $routes,'pokemons' => $pokemons));
    }
}
