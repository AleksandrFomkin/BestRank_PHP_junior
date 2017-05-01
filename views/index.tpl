<!DOCTYPE html>
<head>
    <title>Короткие ссылки</title>
    <script src="../vendor/components/jquery/jquery.js"></script>
    <script src="../scripts/GetShortLink.js"></script>
    <link href="../vendor/components/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="../vendor/components/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="../styles/index.css" rel="stylesheet">
</head>
<body>
    <form id="short-link-form">
        <div class='jumbotron' id="long-link-jumbotron">
            <div  id="long-link-container">
                <label>
                    <span id='long-link-label'>Введите ссылку:</span>
                    <input id='long-link-text' required type="text" placeholder="Поле ввода оригинальной ссылки">
                </label> <br>
                <input id="get-link-button" type="submit" class="btn btn-info" value="Сгенерировать"> <br>
            </div>
            <div id="long-link-result">
                <span id="ajax-label">Ваша ссылка: </span>
                <span id="ajax-result"></span>
            </div>
        </div>
    </form>
    <div id="about-info">
        <span id='site-info' class="fa fa-info-circle fa-3x fa-fw"></span>
        <hr>
        Тестовое задание на позицию <a href="https://career.ru/vacancy/20122667">Младший веб-программист.</a><br>
        Выполнил: Фомкил Александр Сергеевич. <br>
        <img src="../images/me.jpeg" id="me-image"> <br>
        В процессе выполнения использовалось: <br>
        <ul class="list-group">
            <li class="list-group-item">PHP 5.6</li>
            <li class="list-group-item">JQuery</li>
            <li class="list-group-item">Bootstrap</li>
            <li class="list-group-item">FontAwesome</li>
            <li class="list-group-item">Composer</li>
        </ul>
    </div>
</body>