# アプリケーション名
営業の教科書

# アプリケーション概要
社内のコアな業界の情報や市場ニュース、営業技術がシェアでき、数字管理ができる。
# URL
https://eigyoukyoukasyo.herokuapp.com/
# テスト用アカウント
・Basic認証パスワード
mouchiotp0410

・Basic認証ID
manabu.ouchi

・メールアドレス
hoge@hoge

・パスワード
manabu0410

# 利用方法

##  投稿(質問)する
１、トップページの新規登録ボタンから新規登録画面に遷移しユーザー新規登録を行う

２、投稿(質問)するボタンから投稿(質問)画面へ遷移し、内容(ジャンル、タイトル、内容)を入力し投稿(質問)する

##  コメント(回答)する
１、コメント(回答)を残したい投稿(質問)の詳細画面から、内容を入力しコメント(回答)する

##  結果を報告する
１、トップページの結果報告ボタンから入力フォームに移動して、各項目を入力し結果を登録する

# アプリケーションを作成した背景
私自身、長く営業をやっていて、社内のコアな業界の情報や市場ニュース、営業技術を保存、シェアする場所が少ないと考えた為、結果も一緒に管理できるアプリがあると便利と考えた。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/14Q3cZya5yf4pSKuwqRcBq2PBytxXCliJrpHf1zVy24s/edit#gid=982722306


# 実装予定の機能
お気に入り機能
企業秘密になるので管理者機能をつけて、登録できる人を制限する
支店結果一覧

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/d218228c20158dbc0992ca5c1e8c0ca2.png)](https://gyazo.com/d218228c20158dbc0992ca5c1e8c0ca2)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/ed258a9a7d3a4e84ade448c81149ff48.png)](https://gyazo.com/ed258a9a7d3a4e84ade448c81149ff48)

# 開発環境
・フロントエンド：HTML、CSS

・バックエンド：Ruby

・フレームワーク：Ruby on Rails

# ローカルでの動作方法
% git clone https://github.com/manabu-ouchi/eigyoukyoukasyo.git

% cd eigyoukyoukasyo.git

% bundle install

% yarn install

# 工夫したポイント
その技術を投稿した社員の結果、実績を見える様にした。

結果が自動で計算されランキングが掲載されるようにした。
