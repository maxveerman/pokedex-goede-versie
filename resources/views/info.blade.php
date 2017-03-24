@extends('layouts.app')

@section('title','Update')

@section('content')

    <div class="container">
        <div class="page-header">
            <h2>Pokemon {{ $pokemon->name }}</h2>
        </div>

       <div class="row">
           <div class="col-md-6">
               <div class="form-group text-center">
                   <h2>Image {{ $pokemon->name }}</h2>
                   {{ Html::image('images/'.$pokemon->name.'/'.$pokemon->name.'.png', 'Picture of '.$pokemon->name) }}
               </div>
           </div>
           <div class="col-md-6">
               <div class="form-group text-center">
                   <h2>Information</h2>
                   <h3>Type</h3><!-- What type of pokemon is this -->
                   @if(isset($pokemon->getType1->name) && isset($pokemon->getType2->name))
                       <h4>
                           {{ isset($pokemon->getType1->name) ? $pokemon->getType1->name : '' }}
                           |
                           {{ isset($pokemon->getType2->name) ? $pokemon->getType2->name : '' }}
                       </h4>
                   @elseif(isset($pokemon->getType1->name) && !isset($pokemon->getType2->name))
                       <h4>
                           {{ isset($pokemon->getType1->name) ? $pokemon->getType1->name : '' }}
                       </h4>
                   @else
                       <p>Type is unknown</p>
                   @endif

                   <h3>Number</h3>
                   <h4>
                       @if($pokemon->id > 9)
                        #0{{$pokemon->id}}
                       @else
                       #00{{$pokemon->id}}
                        @endif
                   </h4>

                   <h3>PDF</h3> <!-- The PDF of this pokemon -->
                   {!! Form::open(array('url' => '/pdf/'.$pokemon->id)) !!}

                   {!! Form::submit('PDF',array('class' => 'btn btn-info')) !!}

                   {!! Form::close() !!}

               </div>
           </div>
       </div>

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <h2>Biography</h2>

                    @if(empty($pokemon->description))
                        <p>No biography yet...</p>
                    @else
                        {{$pokemon->description}}
                    @endif
            </div>
        </div>

        </div>

        <div class="form-group">
            <h2>Caught</h2>
            @if($pokemon->caught == 1)
                <p>
                    {{$pokemon->getRoute->name}}
                </p>
            @else
                <p>Not caught yet...</p>
            @endif

        </div>

        <div class="form-group">
            @if($pokemon->caught == '1')
                <h2>Release</h2>
                {!! Form::open(array('url' => '/release/'.$pokemon->id)) !!}
                <button class="btn btn-primary">Release</button>
                {!! Form::close() !!}
            @endif
        </div>
    </div>

@endsection