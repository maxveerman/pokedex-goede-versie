<?php

namespace App\Http\Controllers;

use App\Pokemon;
use Illuminate\Http\Request;

use App\Http\Requests;

class PDFController extends Controller
{
    public function index($id){
        {
            $pokemon = Pokemon::find($id);

            $parameter = array();
            $parameter['pokemon'] = $pokemon;


            $pdf = \PDF::loadView('pdf',$parameter);
            return $pdf->stream();
        }
    }
}
