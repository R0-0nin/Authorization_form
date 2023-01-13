<?php

session_start();

$connection = new mysqli('localhost', 'root', 'root','usersdb');

$login = $_POST["login"];
$pass = $_POST["pass"];

if($login == null || $pass == null){

    $_SESSION['message'] = 'Введите данные!';
    header("Location: ../htmls/index.php");
    die();

}

$a = $connection->query("SELECT * FROM `users` WHERE `login` = '$login'");

if(mysqli_num_rows($a) == 0){

    $_SESSION['message'] = 'Не найден такой пользователь!';
    header('Location: ../htmls/index.php');
    die();

}


$rows = mysqli_fetch_array($a);
if($rows['password'] != hash('sha256', crypt($pass, $rows['salt']))){

        $_SESSION['message'] = 'Неверный пароль';
        header('Location: ../htmls/index.php');
        die();

    }

$_SESSION['user'] = mysqli_fetch_array($connection->query("SELECT * FROM `users` WHERE `login` = '$login'"));
header("Location: ../htmls/hello.php");





?>


