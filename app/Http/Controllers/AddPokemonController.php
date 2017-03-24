<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Illuminate\Support\Facades\Input;
use App\Http\Requests\AddPokemonRequest;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Session;
use App\Pokemon;
use Illuminate\Support\Facades\DB;

class AddPokemonController extends Controller
{
    public function index(){

        $types = DB::table('types')
            ->select('name','id')->get();

        return view('addpokemon')->with(array('types' => $types));
    }

    public function addPokemon(){

        if(Pokemon::where('name','=',Input::get('name'))->exists()){
            Session::flash('exists', 'This Pokemon '.Input::get('name').' is already documented');
            return redirect('/addnewpokemon');
        }else{

            $file = array('image' => Input::file('image'),
                            'name' => Input::get('name'),
                            'description' => Input::get('description'),
                            'type1' => Input::get('type1'));

            $rules = array('image' => 'required',
                            'name' => 'required|alpha',
                            'description' => 'required',
                            'type1' => 'required');

            $validator = Validator::make($file, $rules);

            if($validator->fails()){
                return \Redirect::to('/addnewpokemon')->withInput()->withErrors($validator);
            }else{
                if(Input::file('image')->isValid()){
                    $destinationPath = 'images/'.$file['name']; // upload path
                    $extension = Input::file('image')->getClientOriginalExtension(); // getting image extension
                    $fileName = $file['name'].'.'.$extension; // renameing image
                    Input::file('image')->move($destinationPath, $fileName); // uploading file to given path
                    // sending back with message
                    Session::flash('success', 'New Pokemon '.$file['name'].' is added!');

                    $pokemon = new Pokemon();

                    $pokemon->route = Input::get('route');
                    $pokemon->name = ucwords(Input::get('name'));
                    $pokemon->description = Input::get('description');
                    $pokemon->type1 = Input::get('type1');
                    $pokemon->type2 = Input::get('type2');
                    $pokemon->caught = '0';
                    $pokemon->save();

                    return redirect('/addnewpokemon');
                }else{
                    Session::flash('error', 'uploaded file is not valid');
                    return redirect('/addnewpokemon');
                }
            }
        }
    }
}
