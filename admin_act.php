<?php
// var_dump($_POST);
// exit();

session_start();
include('functions.php');

$pdo = connect_to_db();
$username = $_POST['username'];
$password = $_POST['password'];


$sql = 'SELECT * FROM users_table
WHERE username = :username
AND password=:password
AND is_admin=1';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':username', $username, PDO::PARAM_STR);
$stmt->bindValue(':password', $password, PDO::PARAM_STR);
$status = $stmt->execute();

if ($status == false) {
    $error = $stmt->errorInfo();
    echo json_encode(["error_msg" => "{$error[2]}"]);
    exit();
} else {
    $val = $stmt->fetch(PDO::FETCH_ASSOC);
    if (!$val) {
        echo "<p>管理権限がありません</p>";
        echo '<a href="todo_login.php">login</a>';
        exit();
    } else {
        $_SESSION = array();
        $_SESSION["session_id"] = session_id();
        $_SESSION["is_admin"] = $val["is_admin"];
        $_SESSION["username"] = $val["username"];
        header("Location:admin_read.php");
        exit();
    }
}
