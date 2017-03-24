<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pokemon;
use App\Route;
use App\Http\Requests;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use App\Http\Requests\PokemonCaughtRequest;

class PokedexController extends Controller
{
    public function index(){
        $pokemons = Pokemon::paginate(7);

        return \View::make('list')->with(array('pokemons' => $pokemons));
    }

    public function store(PokemonCaughtRequest $request){

        $pokemon = Pokemon::find($request['pokemon']);

        $pokemon->caught = '1';
        $pokemon->route = Input::get('route');
        $pokemon->save();

        Session::flash('caught',''.$pokemon->name.' is caught');

        return redirect('/caught');
    }

    public function info($id){
        $pokemon = Pokemon::find($id);

        return \View::make('info')->with(array('pokemon' => $pokemon));
    }

    public function search(){
        return view('search');
    }

    public function find(){
        $keyword = Input::get('name');

        $pokemons = DB::table('pokemons')
            ->where('name','like','%'.$keyword.'%')
            ->get();

        $matches = (count($pokemons));

        if($matches){
            Session::flash('matches', ' '.$matches. ' matches found ');
        }else{
            Session::flash('nomatches', ' No matches found ');
        }

        return \View::make('/result')->with(array('pokemons' => $pokemons));
    }

    public function release($id){
        $pokemon = Pokemon::find($id);

        $pokemon->caught = '0';
        $pokemon->route = '0';
        $pokemon->save();

        Session::flash('release', 'Pokemon '.$pokemon['name'].' is released!');

        return redirect('/list');
    }

}
