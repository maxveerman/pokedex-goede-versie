<?php
/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| This route group applies the "web" middleware group to every route
| it contains. The "web" middleware group is defined in your HTTP
| kernel and includes session state, CSRF protection, and more.
|
*/

Route::group(['middleware' => 'web'], function () {
    Route::auth();

    /* HomeController method GET */
    Route::get('/', 'HomeController@index');

    /* PokedexController method GET */
    Route::get('/list','PokedexController@index');
    Route::get('/search','PokedexController@search');
    /* PokedexController method POST */
    Route::post('/find','PokedexController@find');
    Route::post('/store','PokedexController@store');
    Route::post('/delete/{id}','PokedexController@delete');
    Route::post('/info/{id}','PokedexController@info');
    Route::post('/update/{id}','PokedexController@update');
    Route::post('/search','PokedexController@search');
    Route::post('/release/{id}','PokedexController@release');

    /* ProfileController method GET */
    Route::get('/profile','ProfileController@index');

    /* CaughtController method GET */
    Route::get('/caught','CaughtController@index');

    /* AddTypeController method GET */
    Route::get('/addtype','AddTypeController@index');

    /* AddTypeController method POST */
    Route::post('/addtype','AddTypeController@addType');

    /* AddPokemonController method GET */
    Route::get('/addnewpokemon','AddPokemonController@index');

    /* AddPokemonController method POST*/
    Route::post('/addnewpokemon','AddPokemonController@addPokemon');

    /* PDFcontroller method POST */
    route::post('/pdf/{id}','PDFController@index');

    route::get('/addbadge','AddBadgeController@index');
    route::post('/addbadge','AddBadgeController@addBadge');

    route::get('/rss','RssController@index');
    route::post('/insertrss','InsertRssController@insert');
    route::post('/slides','InsertRssController@numberOfSlides');

});
