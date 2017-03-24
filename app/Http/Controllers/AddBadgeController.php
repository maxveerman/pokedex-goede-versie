<?php

namespace App\Http\Controllers;

use App\Badges;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Session;

use App\Http\Requests;

class AddBadgeController extends Controller
{
    public function index(){
        return view('/addbadge');
    }

    public function addBadge(){

        if(Badges::where('name','=',Input::get('name').' Badge')->exists()){
            Session::flash('exists', 'This Badge '.Input::get('name').' is already documented');
            return redirect('/addbadge');
        }else{

            $file = array('image' => Input::file('image'),
                'name' => Input::get('name'));

            $rules = array('image' => 'required',
                'name' => 'required|alpha');

            $validator = Validator::make($file, $rules);

            if($validator->fails()){
                return \Redirect::to('/addbadge')->withInput()->withErrors($validator);
            }else{
                if(Input::file('image')->isValid()){
                    $destinationPath = 'images/'.$file['name']; // upload path
                    $extension = Input::file('image')->getClientOriginalExtension(); // getting image extension
                    $fileName = $file['name'].'.'.$extension; // renameing image
                    Input::file('image')->move($destinationPath, $fileName); // uploading file to given path
                    // sending back with message
                    Session::flash('success', 'New '.$file['name'].' Badge is added!');

                    $badge = new Badges();

                    $badge->name = ucwords(Input::get('name')). ' Badge';
                    $badge->save();

                    return redirect('/addbadge');
                }else{
                    Session::flash('error', 'uploaded file is not valid');
                    return redirect('/addbadge');
                }
            }
        }
    }
}
