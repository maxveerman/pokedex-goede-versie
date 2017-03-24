@extends('layouts.app')

@section('title','Your list')

@section('content')

    <div class="container">
        <div class="page-header">
            <h2>Pokedex</h2>
        </div>

        @if(Session::has('delete'))
            <p class="alert alert-danger {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('delete') }}</p>
        @elseif(Session::has('added'))
            <p class="alert alert-success {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('added') }}</p>
        @elseif(Session::has('updated'))
            <p class="alert alert-success {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('updated') }}</p>
        @elseif(Session::has('release'))
            <p class="alert alert-success {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('release') }}</p>
        @endif

        <div class="row">
            <div class="col-md-6">
                <table class="table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Caught</th>
                        <th>Name</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($pokemons as $pokemon)
                        <tr>
                            <td>{{$pokemon->id}}</td>
                            <td>
                                @if($pokemon->caught == '1')
                                    {{ Html::image('images/Pokeball/pokeball.jpg') }}
                                @else
                                    {{ Html::image('images/Pokeball/pokeballgrey.jpg') }}
                                @endif
                            </td>
                            <td>
                                {{$pokemon->name}}
                            </td>
                            <td>
                                {!! Form::open(array('url' => '/info/'.$pokemon->id)) !!}
                                <button class="btn btn-success">Info</button>
                                {!! Form::close() !!}
                            </td>
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        </tr>
                    @endforeach
                    </tbody>
                </table>
                <div class="pagination"> {{ $pokemons->links() }} </div>
            </div>
        </div>

    </div>

@endsection