@extends('layouts.layout', ['title'=>'Додавання Малюнків'])

@section('content')

<div class="bg-light d-flex align-items-center justify-content-center fx-column vh-100">

    <div class="card shadow-sm p-4" style="max-width: 400px; width: 100%;">
        <h1 class="text-center mb-4 text-primary fs-4">Додавання Малюнків</h1>
        <form action="{{route('image.index')}}" method="post" enctype="multipart/form-data">
            @csrf
            <div class="mb-3">
                <label for="image" class="form-label text-muted">Оберіть файли:</label>
                <input type="file" name="image[]" id="image" multiple class="form-control">
            </div>
            <button type="submit" name="send" value="add" class="btn btn-primary w-100">Додати Малюнки</button>
        </form>
        <h1 class="text-center mb-4 text-success fs-4">Почати Гру</h1>
        <form action="{{ route('image.refresh') }}" method="post">
            @csrf
            <div class="mb-3">
                <label for="name" class="form-label text-muted">Ваш псевдонім:</label>
                <input type="text" name="playerName" id="name" placeholder="Your NickName" class="form-control">
            </div>
            <input type="submit" name="send2" value="До гри" class="btn btn-success w-100">
        </form>
        @if (session('success'))
            <div class="alert alert-success alert-dismissible fade show" role="alert" style="max-width: 400px; width: 100%;">
                <strong>Успіх!</strong> {{session('success')}}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif
        @if (session('error'))
            <div class="alert alert-success alert-dismissible fade show" role="alert" style="max-width: 400px; width: 100%;">
                <strong>Помилка!</strong> {{session('error')}}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif
    </div>
</div>



