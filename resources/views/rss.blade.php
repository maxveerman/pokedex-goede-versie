@extends('layouts.app')

@section('title','Rss')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">RSS Feed</div>

                    <div class="panel-body">
                        @foreach($items->channel->item as $entry)

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-4">
                                        <img src="{{ $entry->enclosure['url'] }}">
                                    </div>
                                    <div class="col-md-8">
                                        <h4>{{$entry->title}}</h4>
                                        <p>{{$entry->description}}</p>
                                    </div>
                                </div>
                            </div>

                        @endforeach
                    </div>
                </div>
            </div>
        </div>

    </div>
@endsection
