#　プロダクトの内容
先週の授業で作ったログイン画面に管理者画面をプラスして、管理者だけが管理者画面に入り、ユーザーデータを修正、削除できるようにしました。

##　工夫したところ
コピペで効率よく作りました。

###　苦労したところ（できなかったところ）
・todo_readの73行目で、usernameを表示させたかったけどできませんでした。
・todo_tableにusernameというカラムをプラスし、ログインしたusernameの人のtodoリストのみ表示させたいと思ったのですが、できませんでした。

#### 1/28追記
 ・先週の課題を改造して、３人のユーザーが対話に参加し、お互いを評価しあうページを作ろうとしましたが、未完成です。
 ・最初にログインしている人が参加した対話を全て表示して（mypage.php）、入力ボタンを押すと評価を入力するページ（thanks_createなど）に移動させようと思っています。できるだけ授業で作っていたtodoリストを活用して作ろうとしています。
 ・ファイル名は大幅に変えましたが、mypage.php以外はほとんど触っていません。
 ・myadminのデータベース名をgsacf_d07_11に変えました。

 ##### 1/29追記
 ・ 西さんのアドバイスのおかげで、mypageに、ログインした人が参加した対話のみを表示させることができました。okuda（id：1）でログインすると対話①と対話３、B（id：5）でログインすると対話②、３、４、５が表示されます。
 ・このあと、ありがとうポイントを入力したり編集する画面をtodo_input.phpやtodo_edit.php、todo_create.phpを改造して作ろうとしていますが、テーブルの作り方じたいが違っていたのかもしれないと思って、考えがまとまらない状況です。