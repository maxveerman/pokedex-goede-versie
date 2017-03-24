@extends('layouts.app')

@section('title','User Profile')

@section('content')

    <div class="container">
        <div class="page-header">
            <h2>Trainer Profile : {{ Auth::user()->name }}</h2>
        </div>

        <div class="row">
            <div class="col-md-4">
                <h2>RSS input</h2>
                {!! Form::open(array('url' => '/slides')) !!}

                <div class="form-group">
                    {!! Form::text('slides',null,array('class' => 'form-control','placeholder' => 'Enter number of slides')) !!}

                </div>

                <div class="form-group">
                    {!! Form::submit('Confirm',array('class' => 'btn btn-primary')) !!}
                </div>
                {!! Form::close() !!}
            </div>

            <div class="col-md-5">
                <div class="row">
                    <h2>Badges</h2>
                    <div class="col-md-12">
                        @if($pokemoncaught > 5)
                            {{ Html::image('images/Boulder/Boulder.png') }}
                        @else

                        @endif

                    </div>
                    <div class="col-md-12">

                    </div>
                </div>



            </div>

            <div class="col-md-3">
                <h2>Information</h2>

                <h4>Pokemon Total</h4>
                #{{$pokemontotal}}

                <h4>Pokemon caught</h4>
                {{$pokemoncaught}}
            </div>
        </div>
    </div>

@endsection