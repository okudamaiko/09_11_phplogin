<?php
session_start();
include("functions.php");
check_session_id();

$username = $_SESSION['username'];
$user_id = $_SESSION['user_id'];
// $id = $_GET['id'];
// var_dump($user_id);
// exit();
// DB接続
$pdo = connect_to_db();
//★テスト用★  ID に値を代入しています
// $id = 1;

$sql = 'SELECT event_table.event_name, event_table.event_date, users_table.id, 
event_table.user1_id, event_table.user2_id, event_table.user3_id, users_table.username, users_table.id as user_id
FROM event_table, users_table
WHERE ((:user_id = users_table.id) 
AND  (users_table.id = event_table.user1_id
OR    users_table.id = event_table.user2_id
OR    users_table.id = event_table.user3_id))
ORDER BY event_table.event_date desc';




// SQL準備&実行
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':user_id', $user_id, PDO::PARAM_INT);
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
    foreach ($result as $record) {
        $output .= "<tr>";
        $output .= "<td>{$record["event_name"]}</td>";
        $output .= "<td>{$record["event_date"]}</td>";
        $output .= "<td>{$record["user1_id"]}</td>";
        $output .= "<td>{$record["user2_id"]}</td>";
        $output .= "<td>{$record["user3_id"]}</td>";
        $output .= "<td><a href='thanks_input.php?id={$record["id"]}'>入力</a></td>";
        $output .= "<td><a href='thanks_edit.php?id={$record["id"]}'>編集</a></td>";
        $output .= "</tr>";
    }
    // $valueの参照を解除する．解除しないと，再度foreachした場合に最初からループしない
    // 今回は以降foreachしないので影響なし
    unset($value);
}
?>
<!DOCTYPE html>
<html lang="ja">
​

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MYPAGE（一覧画面）</title>
</head>
​

<body>
    <fieldset>
        <legend>MYPAGE（一覧画面）</legend>
        <a href="thanks_input.php">入力画面</a>
        <a href="taiwa_logout.php">logout</a>
        <table>
            <thead>
                <th>username<?php echo "<p> $username </p>" ?></th>
                <th>user_id<?php echo "<p> $user_id </p>" ?></th>
                <tr>
                    <th>対話</th>
                    <th>日時</th>
                    <th>参加者１</th>
                    <th>参加者２</th>
                    <th>参加者３</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <!-- ここに<tr><td>deadline</td><td>todo</td><tr>の形でデータが入る -->
                <?= $output ?>
            </tbody>
        </table>
    </fieldset>
</body>
​

</html>