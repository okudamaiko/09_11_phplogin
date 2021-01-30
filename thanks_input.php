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
  <title>ありがとうポイント入力画面</title>
</head>

<body>
  <form action="thanks_create.php" method="POST">
    <fieldset>
      <legend>ありがとうポイント入力画面</legend>
      <a href="mypage.php">MYPAGE（対話一覧）</a>
      <a href="taiwa_logout.php">ログアウト</a>
      <div>
        参加者１: <input type="text" name="todo">
      </div>
      <div>
        参加者２: <input type="date" name="deadline">
      </div>
      <div>
        <button>submit</button>
      </div>
    </fieldset>
  </form>

</body>

</html>