@extends('layouts.app')

@section('title','Add New Pokemon')

@section('content')

    <div class="container">
        <div class="page-header">
            <h2>Add a new Pokemon to the Pokedex</h2>
        </div>

        @if(Session::has('success'))
            <p class="alert alert-success {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('success') }}</p>
        @elseif(Session::has('exists'))
            <p class="alert alert-danger {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('exists') }}</p>
        @endif

        {!! Form::open(array('url' => '/addnewpokemon','files' => 'true')) !!}

        @if (count($errors) > 0)
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <div class="form-group">
            <h2>Name</h2>
            {!! Form::text('name',null,array('class' => 'form-control','placeholder' => 'Enter the new pokemon name')) !!}
        </div>

        <div class="form-group type1">
            <h2>Type 1</h2>
            <select name="type1" class="form-control">
                <option value="">Select Type 1</option>
                @foreach($types as $type)
                    <option value="{{ $type->id }}">{{ $type->name }}</option>
                @endforeach
            </select>
        </div>

        <div class="form-group type2">
            <h2>Type 2</h2>
            <select name="type2" class="form-control">
                <option value="">Select Type 2</option>
                @foreach($types as $type)
                    <option value="{{ $type->id }}">{{ $type->name }}</option>
                @endforeach
            </select>
        </div>

        <div class="form-group">
            <h2>Descripton</h2>
            {!! Form::textarea('description',null,array('class' => 'form-control','placeholder' => 'Enter a small description here')) !!}
        </div>

        <div class="form-group">
            <h2>Image</h2>
           {!! Form::file('image') !!}
        </div>

        <div class="form-group">
            {!! Form::submit('Add',array('class' => 'btn btn-primary')) !!}
        </div>
        {!! Form::close() !!}

    </div>

@endsection