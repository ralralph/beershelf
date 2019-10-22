# README

# Beer shelf

## 概要
クラフトビール好きの人の為の、クラフトビール専用SNS

## コンセプト
全てのクラフトビアラヴァーに注ぐ、専用SNSの決定版。
日々のビアライフを記録しシェア、他人の投稿から、気になる銘柄をキープできる。

## 言語・ミドルウェアなど
- Ruby 2.6.5
- Rails 5.2.3
- PostgreSQL 11.5

## 機能一覧
- [ ] ログイン機能
- [ ] ユーザー登録機能
  - [ ] メールアドレス、名前、パスワードは必須
- [ ] パスワード再設定機能
- [ ] 投稿一覧表示機能
  - [ ] ビールのウィッシュリスト登録機能
- [ ] レコードの投稿機能
  - [ ] ビールの登録とレコードの記入は必須
- [ ] レコードの投稿編集機能
- [ ] レコードの投稿削除機能
  - [ ] 投稿編集と投稿削除は投稿者のみ実行可能
- [ ] ユーザーのフォロー機能
  - [ ] 自分はフォローできない
- [ ] お気に入り機能についてはページ遷移なしで実行できる
- [ ] マイページ機能
  - [ ] 自分の投稿一覧、ウィッシュリスト、コンプリートリストをタブ切り替えで表示できる。
  - [ ] 飲んだものはウィッシュリストからコンプリートリストへ移動できる。
  - [ ] 自分以外のアクセスからは、編集ボタンが非表示
- [ ] フォローしているユーザー一覧
  - [ ] 一覧画面でフォローの解除が非同期でできる
- [ ] 銘柄、醸造所の登録
  - [ ] 誰でも編集可能だが、削除は管理者のみ
- [ ] 銘柄詳細機能
  - [ ] 銘柄に紐づいた投稿の画像一覧が表示される
  - [ ] 銘柄に平均評価が表示される
- [ ] 醸造所詳細機能
  - [ ] 取り扱っている銘柄の一覧が表示される


## カタログ設計
https://docs.google.com/spreadsheets/d/1nFEJtBP0v7-_3xuTXn5K4rM3098eLdLPhAwLOdOtlqQ/edit?usp=sharing

## テーブル定義
https://docs.google.com/spreadsheets/d/1nFEJtBP0v7-_3xuTXn5K4rM3098eLdLPhAwLOdOtlqQ/edit#gid=0

## 画面遷移図　/ ER図
https://drive.google.com/file/d/1Mje5bOrdagz_oy_NFC1st7FQmA_jqSuF/view?usp=sharing
https://drive.google.com/file/d/1YjGYcFM0SLCi6AKvcFKs1GzM1ZgMhMmP/view?usp=sharing


## 画面ワイヤーフレーム
https://xd.adobe.com/view/94340b3b-75ec-427e-496f-080d81a736fc-e205/

## 使用予定Gem
* carrierwave
* mini_magick
* devise
* ransack
* rails_admin
* toastr
* pundit
* rubocop