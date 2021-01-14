<?php
session_start();
include('functions.php');
check_session_id();

?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>管理者ログイン画面</title>
</head>

<body>
    <form action="admin_act.php" method="POST">
        <fieldset>
            <legend>管理者ログイン画面</legend>
            <div>
                username: <input type="text" name="username">
            </div>
            <div>
                password: <input type="text" name="password">
            </div>
            <div>
                <button>Login</button>
            </div>
            <a href="todo_register.php">新規登録</a>
            <a href="admin.php">管理者</a>
        </fieldset>
    </form>

</body>

</html>





<!-- // DB接続
$pdo = connect_to_db();

// データ取得SQL作成
$sql = 'SELECT * FROM users_table';

// SQL準備&実行
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

// データ登録処理後
if ($status == false) {
// SQL実行に失敗した場合はここでエラーを出力し，以降の処理を中止する
$error = $stmt->errorInfo();
echo json_encode(["error_msg" => "{$error[2]}"]);
exit();
} else {
// 正常にSQLが実行された場合は入力ページファイルに移動し，入力ページの処理を実行する
// fetchAll()関数でSQLで取得したレコードを配列で取得できる
$result = $stmt->fetchAll(PDO::FETCH_ASSOC); // データの出力用変数（初期値は空文字）を設定
$output = "";
// <tr>
    <td>deadline</td>
    <td>todo</td>
<tr>の形になるようにforeachで順番に$outputへデータを追加
    // `.=`は後ろに文字列を追加する，の意味
    foreach ($result as $record) {
    $output .= "
<tr>";
    $output .= "<td>{$record["username"]}</td>";
    $output .= "<td>{$record["is_admin"]}</td>";
    // edit deleteリンクを追加
    $output .= "<td><a href='admin_edit.php?id={$record["id"]}'>edit</a></td>";
    $output .= "<td><a href='admin_delete.php?id={$record["id"]}'>delete</a></td>";
    $output .= "</tr>";
}
// $valueの参照を解除する．解除しないと，再度foreachした場合に最初からループしない
// 今回は以降foreachしないので影響なし
unset($value);
}
$username = 'username';

?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>管理者画面（一覧画面）</title>
</head>

<body>
    <form action="admin_act.php" method="POST">
        <fieldset>
            <legend>管理者画面（一覧画面）</legend>
            <a href="todo_login.php">入力画面</a>
            <a href="todo_logout.php">logout</a>
            <table>
                <thead>
                    <tr>
                        <th>username</th>
                        <th>管理者権限</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <!-- ここに<tr><td>deadline</td><td>todo</td><tr>の形でデータが入る -->
<!-- <?= $output ?>
                </tbody>
            </table>
        </fieldset>
    </form>
</body>

</html> --> -->