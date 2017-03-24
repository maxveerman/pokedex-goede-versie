@extends('layouts.app')

@section('title','Search')

@section('content')

    <div class="container">
        <div class="page-header">
            <h2>Pokedex Search</h2>
        </div>

        {!! Form::open(array('files' => true,'url' => '/find')) !!}
        <div class="form-group">
            {!! Form::text('name',null,array('required','class' => 'form-control','placeholder' => 'Enter Pokemon name here')) !!}
        </div>

        <div class="form-group">
            {!! Form::submit('Find',array('class' => 'btn btn-primary')) !!}
        </div>
        {!! Form::close() !!}
    </div>


@endsection