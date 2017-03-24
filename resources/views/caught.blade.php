@extends('layouts.app')

@section('title','Caught')

@section('content')

    <div class="container">
        <div class="page-header">
            <h2>Pokemon Caught</h2>
        </div>

        @if(Session::has('caught'))
            <p class="alert alert-success {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('caught') }}</p>
        @endif

        @if (count($errors) > 0)
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        {!! Form::open(array('url' => '/store')) !!}

        <div class="form-group">
            <h2>Select Pokemon</h2>
            <select name="pokemon" class="form-control">
                <option value="">Select the caughted Pokemon</option>
                @foreach($pokemons as $pokemon)
                    <option value="{{ $pokemon->id }}">{{ $pokemon->name }}</option>
                @endforeach
            </select>
        </div>

        <div class="form-group route">
            <h2>Select Route</h2>
                <select name="route" class="form-control">
                    <option value="">Select the route</option>
                        @foreach($routes as $route)
                            <option value="{{ $route->id }}">{{ $route->name }}</option>
                        @endforeach
                </select>
        </div>

        <div class="form-group">
            {!! Form::submit('Update',array('class' => 'btn btn-primary')) !!}
        </div>
        {!! Form::close() !!}
    </div>
@endsection
