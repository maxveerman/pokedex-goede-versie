@extends('layouts.app')

@section('title','Search')

@section('content')

    <div class="container">
        <div class="page-header">
            <h2>Pokedex Results</h2>
        </div>

        @if(Session::has('matches'))
            <p class="alert alert-success {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('matches') }}</p>
        @else
            <p class="alert alert-danger {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('nomatches') }}</p>
        @endif

        <table class="table">
            <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
            </tr>
            </thead>
            <tbody>
            @foreach($pokemons as $pokemon)
                <tr>
                    <td>{{$pokemon->id}}</td>
                    <td>{{$pokemon->name}}</td>
                </tr>
            @endforeach
            </tbody>
        </table>

    </div>

@endsection