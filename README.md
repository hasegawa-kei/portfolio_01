# BOOK BANK
## 概要
持っている本を登録して管理するアプリです。
目に見える形で管理することによって思考を見える化することができます。
![54 250 29 59_](https://user-images.githubusercontent.com/56828853/72335941-25fd2c80-3703-11ea-8bd0-0b3a2581d90e.png)

## 機能一覧
・ユーザー登録、編集機能  
・ログイン、ログアウト機能  
・本の登録、編集、削除機能  
・感想の登録、編集、削除機能  
・読みたいリスト登録、削除機能  
・ユーザーフォロー登録、削除機能  
・本、著者、出版書の検索機能  

## 使用技術一覧
・インフラ、デプロイ関連/AWS、capistrano, nginx, unicorn  
・データベース関連/mysql  
・ユーザー関連/device  
・画像関連/carrierwave  
・グラフ関連/chart.js  

![54 250 29 59_users_1](https://user-images.githubusercontent.com/56828853/72337721-60b49400-3706-11ea-8b08-641e9fa3a9d2.png)
## 制作背景
アメリカの格言に「本棚を見ればその人がわかる」とあるように、持っている本を管理して『思考の見える化』が出来るアプリケーションがあったら便利だと思い作成しました。  

![54 250 29 59_books_5](https://user-images.githubusercontent.com/56828853/72337908-ba1cc300-3706-11ea-802b-d547ff74c371.png)
## 工夫した点
登録した本を読書をした後に感想を登録できるようにして、読書のデータが残るようにしたこと。  

![54 250 29 59_books_1_impressions_1](https://user-images.githubusercontent.com/56828853/72338070-05cf6c80-3707-11ea-989b-10585540fcdc.png)
## 特徴
本ごとに『いつ読んだか・その時の感想文』などの読書の歴史が残るので、過去に遡って自分との対話ができるようにしたこと。  

## 今後実装したい機能
・再び読書するタイミングの登録、通知機能  
・フォローしているユーザーが本の新規登録した時の通知機能  
