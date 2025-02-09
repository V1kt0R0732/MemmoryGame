@extends('layouts.layout', ['title'=>'Гра'])

@section('content')

    <div class="image-wrapper">
        @foreach($array as $image)
            <img src="{{$image}}" alt="No photo" class="image-item" >
        @endforeach
    </div>
