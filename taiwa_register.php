<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>対話ユーザ登録画面</title>
</head>

<body>
  <form action="taiwa_register_act.php" method="POST">
    <fieldset>
      <legend>対話ユーザ登録画面</legend>
      <div>
        username: <input type="text" name="username">
      </div>
      <div>
        password: <input type="text" name="password">
      </div>
      <div>
        <button>新規登録</button>
      </div>
      <a href="taiwa_login.php">ログイン</a>
    </fieldset>
  </form>

</body>

</html>