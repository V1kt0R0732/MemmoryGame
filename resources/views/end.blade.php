@extends('layouts.layout', ['title'=>'Кінець гри'])

@section('content')


<div class="container text-center">
    <h2>Вітаю, Гру завершено</h2>
    <h3>Час вичерпано</h3>
    <h4>Бали: {{ $points != null ? $points : 0 }}</h4>
    <div class="d-flex hud">
        <a href="/" class="btn btn-primary" style="margin-right: 60px">Головна</a>
        <form style="margin: 0 0 0 35px" method="post" action="{{route('image.delete', ['playerName'=>$playerName])}}" onsubmit="if(confirm('Ви дійсно хочите видалити весь свій проогресс?')){return true}else{return false}">
            @csrf
            @method('DELETE')
            <input type="submit" name="delete" value="Видалити рекорд" class="btn btn-danger">
        </form>

        <a href="/refresh" class="btn btn-primary" style="margin-left: 60px">Грати ще раз</a>
    </div>
</div>

<div class="hud">
    <div class="container mt-4">
        <h2 class="text-center">Таблица победителей</h2>
        <div class="table-responsive" style="max-height: 400px; overflow-y: auto;">
            <table class="table table-striped table-bordered text-center">
                <thead class="table-info">
                    <tr>
                        <th>Місце</th>
                        <th>Ім'я</th>
                        <th>Очки</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($players as $player)
                    <tr @if($playerName == $player->name) class="table-warning" @endif >
                        <td>#{{ $loop->iteration }}</td>
                        <td>{{ $player->name }}</td>
                        <td>{{ $player->points }}</td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>




