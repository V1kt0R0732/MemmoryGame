<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
{{--    <link href="{{asset('style.css')}}" rel="stylesheet">--}}
    <style>
        img{
            border: 3px solid black;
        }
        body{
            flex-direction: column;
        }
        /* Центрируем квадрат на странице */
        .image-wrapper {
            display: grid;
            grid-template-columns: repeat(4, 1fr); /* 4 картинки в ряд */
            gap: 10px; /* Отступы между картинками */
            width: 650px; /* Фиксированная ширина квадрата */
            height: 650px; /* Фиксированная высота квадрата */
            margin: 20px auto; /* Центрируем контейнер относительно страницы */
            background-color: #f3f3f3; /* Опционально: фон */
            border: 2px solid #ccc; /* Опционально: рамка */
            padding: 10px; /* Внутренний отступ (опционально) */
            box-sizing: border-box; /* Учитываем padding в размерах */
        }

        /* Фиксированный размер изображения */
        .image-item {
            width: 150px; /* Фиксированная ширина картинки */
            height: 150px; /* Фиксированная высота картинки */
            object-fit: cover; /* Сохраняем соотношение сторон, при необходимости "обрезаем" */
        }
        .hud {
            margin: auto;
            display: flex;
            justify-content: space-around;
            width: 650px;
        }
        b {
            font-size: 20px;
        }
    </style>
</head>
<body>
@yield('content')
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script>
    $(document).ready(function () {
        // $('#img2').hide();
        //
        // setTimeout(function () {
        //     $('#img2').show();
        //     $('#img1').hide();
        // }, 4000);

    });
</script>
</body>
</html>
