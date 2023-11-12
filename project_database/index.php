<?php
if(isset($_GET['controller'])&&isset($_GET['action']))
{
    $controller = $_GET['controller'];
    $action = $_GET['action'];
}
else
{
    $controller = 'pages';
    $action = 'index';
}
?>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
    <nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#">Strom</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
            <li class="nav-item">
                <a class="nav-link" href="?controller=pages&action=index">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="?controller=Country&action=index">รายชื่อประเทศ</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="?controller=StormName&action=index">รายชื่อพายุ</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="?controller=StormNameInactive&action=index">รายชื่อพายุที่ถูกปลด</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="?controller=Summary&action=index">สรุป</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">6420503701</a>
            </li>
        </ul>
        </div>
    </div>
    </nav>

        
        <!-- <br>
        <a class="btn btn-primary " href="?controller=pages&action=home">Home</a>
        <a class="btn btn-primary " href="?controller=Country&action=index">รายชื่อประเทศ</a>
        <a class="btn btn-primary " href="?controller=StormName&action=index">รายชื่อพายุ</a>
        <a class="btn btn-primary " href="?controller=StormNameInactive&action=index">รายชื่อพายุที่ถูกปลด</a>
        <a class="btn btn-primary " href="?controller=Summary&action=index">สรุป</a> -->
        <br>
        <?php require_once("routes.php"); ?>
    <body>
</html>









 
