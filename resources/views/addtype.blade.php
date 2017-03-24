@extends('layouts.app')

@section('title','Add Type')

@section('content')

    <div class="container">
        <div class="page-header">
            <h2>Pokemon Type</h2>
        </div>

        @if(Session::has('added'))
            <p class="alert alert-success {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('added') }}</p>
        @elseif(Session::has('exists'))
            <p class="alert alert-danger {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('exists') }}</p>
        @elseif(Session::has('total'))
            <p class="alert alert-danger {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('total') }}</p>
        @endif

        {!! Form::open(array('url' => '/addtype')) !!}
        <div class="form-group">
            {!! Form::text('name',null,array('required','class' => 'form-control','placeholder' => 'Enter new Pokemon type')) !!}
        </div>

        <div class="form-group">
            {!! Form::submit('Add',array('class' => 'btn btn-primary')) !!}
        </div>
        {!! Form::close() !!}

    </div>

@endsection