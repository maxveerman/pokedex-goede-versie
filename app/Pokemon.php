<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pokemon extends Model
{
    protected $table = "pokemons";

    public function getRoute(){
        return $this->hasOne('App\Route','id','route');
    }

    public function getType1(){
        return $this->hasOne('App\Type','id','type1');
    }

    public function getType2(){
        return $this->hasOne('App\Type','id','type2');
    }
}
