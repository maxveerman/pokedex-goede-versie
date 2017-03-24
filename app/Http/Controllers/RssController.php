<?php

namespace App\Http\Controllers;

use App\Rss;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use SimpleXMLElement;

use App\Http\Requests;

class RssController extends Controller
{
    public function index(){

        $feed = Rss::find(1);
        $rss = $feed['name'];
        $number = $feed['slides'];
        $start = 0;

        $content = file_get_contents($rss);
        $items = new SimpleXmlElement($content);



        return \View::make('rss')->with(array('items' => $items,'number' => $number,'start' => $start ));

    }
}
