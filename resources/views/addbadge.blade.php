@extends('layouts.app')

@section('title','Add New Pokemon')

@section('content')

    <div class="container">
        <div class="page-header">
            <h2>Add a new Badge</h2>
        </div>

        @if(Session::has('success'))
            <p class="alert alert-success {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('success') }}</p>
        @elseif(Session::has('exists'))
            <p class="alert alert-danger {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('exists') }}</p>
        @endif

        {!! Form::open(array('url' => '/addbadge','files' => 'true')) !!}

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
            {!! Form::text('name',null,array('class' => 'form-control','placeholder' => 'Enter the Badge name')) !!}
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