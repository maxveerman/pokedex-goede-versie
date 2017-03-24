<?php

namespace App\Http\Controllers;

use App\Rss;
use Illuminate\Http\Request;

use App\Http\Requests;
use Illuminate\Support\Facades\Input;

class InsertRssController extends Controller
{
    public function insert(){
        $link = Input::get('name');

        $rss = new Rss();
        $rss->name = $link;
        $rss->save();

        return redirect('/');
    }

    public function numberOfSlides(){
        $slides = Input::get('slides');

        $rss = Rss::findOrFail(1);
        $rss->slides = $slides;
        $rss->save();

        return redirect('/profile');

    }
}
