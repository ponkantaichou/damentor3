# アプリケーション名：  駄目ンター<br>
<br>

## URL<br>
  https://damentor3.herokuapp.com/<br>
<br>

## アプリケーション概要<br>
  メンターさんのレビューを出来るアプリケーションです。<br>
  プログラミングスクールに通っている受講生をターゲットにしています。<br>
  匿名で投稿でき良いメンターさんの情報を共有できるアプリを作成しました。<br>
<br>

### トップ画面<br>
[![Image from Gyazo](https://i.gyazo.com/a57e6931baf51d39b0a537006a829a55.png)](https://gyazo.com/a57e6931baf51d39b0a537006a829a55)<br>

### 検索画面
[![Image from Gyazo](https://i.gyazo.com/803f984b65d744c64b71e5b0586a5c31.png)](https://gyazo.com/803f984b65d744c64b71e5b0586a5c31)<br>

## 動作確認方法<br>
1,WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。<br>
ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。<br>
2,同時に複数の方がログインしている場合に、ログインできない可能性があります。<br>
3,サンプルアドレスとパスワードを用意しています。<br>
・mail:  sample1@sample.com  password:  sample11<br>
・mail:  sample2@sample.com  password:  sample22<br>
4,確認後、ログアウト処理をお願いします。<br>
<br>

### 利用方法:<br>
  1,新規登録ボタンから新規登録を行います。<br>
  動作確認方法の欄にサンプルを用意していますので、お使いください。<br>
  2,上部の「メンターさん一覧」をクリックしメンターさん一覧に遷移します。<br>
  3,レビューしたいメンターさんを選びます。<br>
  4,コメントと星の数を洗濯してレビューを投稿できます。（５段階評価です）<br>
<br>
  サーチ機能もついていますので調べたいメンターさんの名前を入力して検索できます。<br>
<br>

## 洗い出した要件<br>
  1,メンターさんをレビューできる機能<br>
  2,多くなると探しにくいのでサーチ機能の実装<br>
<br>

## 実装した機能についてのGIFと説明<br>
  1,デバイスによるログインの機能の実装<br>
  2,JavaScriptによるレビュー機能の実装<br>
  3,サーチ機能の実装<br>
<br>

## 工夫した機能
  1,サーチ機能をつけることで素早く特定のメンターさんの情報を取得できます。<br>
  2,評価の点数を小数点で表示できるようにしたことです。

## 実装予定の機能<br>
 エラーを投稿でき、どのメンターさんに解決して貰ったかを投稿できるように投稿フォームを実装予定です。<br>
<br>

## 追加実装①（PHPを使った掲示板）<br>
[![Image from Gyazo](https://i.gyazo.com/3ccf3952dff4fae099ce0164d7e27ac8.png)](https://gyazo.com/3ccf3952dff4fae099ce0164d7e27ac8)<br>

## 追加実装②（Laravelによる投稿機能）<br>
[![Image from Gyazo](https://i.gyazo.com/220f0542210ad121692660062cd0a40e.png)](https://gyazo.com/220f0542210ad121692660062cd0a40e)<br>

[![Image from Gyazo](https://i.gyazo.com/ed38a013424b212b1b2042849c8f6135.png)](https://gyazo.com/ed38a013424b212b1b2042849c8f6135)<br>

## データベース設計<br>
[![Image from Gyazo](https://i.gyazo.com/2e0ad8a9a876fa1660ffbc20ac5b57cf.png)](https://gyazo.com/2e0ad8a9a876fa1660ffbc20ac5b57cf)<br>
<br>

## 開発環境<br>
Ruby / Ruby on Rails / MySQL / GitHub / EC2 / JavaScript / Visual Studio Code<br>