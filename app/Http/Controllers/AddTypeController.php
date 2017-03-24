<?php

namespace App\Http\Controllers;

use App\Type;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\DB;

use App\Http\Requests;

class AddTypeController extends Controller
{
    public function index(){
        return \View('addtype');
    }

    public function addType(){

        $types = DB::table('types')
            ->select('name')->get();

        $total = count($types);

        if($total >= 15){
            \Session::flash('total', 'Can`t add more Pokemon types');
            return redirect('/addtype');
        }

        if(Type::where('name','=',Input::get('name'))->exists()){

            \Session::flash('exists', 'Type already exists');

            return redirect('/addtype');
        }else{
            $type = new Type();
            $type->name = Input::get('name');
            $type->save();

            \Session::flash('added', 'Added new type');

            return redirect('/addtype');
        }
    }
}
