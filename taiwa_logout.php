<?php
session_start();
include('functions.php');

$_SESSION = array();
if (isset($_COOKIE[session_name()])) {
    setcookie(session_name(), '', time() - 42000, '/');
}
session_destroy();
header('Location:taiwa_login.php');
exit();
