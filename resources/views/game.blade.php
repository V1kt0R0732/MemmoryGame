@extends('layouts.layout', ['title'=>'Гра'])

@section('content')


{{--<div class="image-wrapper" id="img1">--}}
{{--    @foreach($array as $image)--}}
{{--        <img src="{{$image}}" alt="No photo" class="image-item" >--}}
{{--    @endforeach--}}
{{--</div>--}}
<div class="hud"><b>Бали: {{ $points != null ? $points : 0 }}</b><b>Лишилось: {{ $timeLeft }}</b></div>
<div class="image-wrapper" id="img2">
    @for($i = 0; $i < 16; $i++)
        @if( $fakeArray[$i] == "/storage/images/noPhoto.png")
            <a href="{{route('image.start',['id'=>$i])}}"><img src="{{ $fakeArray[$i] }}" alt="No photo" class="image-item"></a>
        @else
            <img src="{{ $fakeArray[$i] }}" alt="No photo" class="image-item">
        @endif
    @endfor
</div>

