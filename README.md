# BOOK BANK
![54 250 29 59_](https://user-images.githubusercontent.com/56828853/72335941-25fd2c80-3703-11ea-8bd0-0b3a2581d90e.png)

## 概要
持っている本を登録して管理するアプリです。  
目に見える形で管理することによって思考を見える化することができます。  
### URL
https://book-bank.work/
### テストアカウント
ログインページに記載しておりますので、チェックする際はご利用ください。
<img width="815" alt="スクリーンショット 2020-01-17 11 56 59" src="https://user-images.githubusercontent.com/56828853/72580851-aea4e400-3920-11ea-95e2-0af023f96c2f.png">


# 機能一覧
・ユーザー登録、編集機能  
・ログイン、ログアウト機能  
・本の登録、編集、削除機能  
・感想の登録、編集、削除機能  
・読みたいリスト登録、削除機能  
・ユーザーフォロー登録、削除機能  
・本、著者、出版書の検索機能  
・フォローユーザーの新規登録の通知機能  
・読書履歴の確認機能

# 使用技術一覧
### フロントサイド
・HTML (haml)  
・css (sass)  
・JavaScript (Jquery)  
### バックエンド  
・Ruby (2.5.1)  
・Rails (5.2.3)  
### ユーザー関連  
・device  
### 画像関連  
・carrierwave  
### グラフ関連  
・chart.js  
### サーバー  
・Nginx (1.16.1)  
### DB  
・MySQL(5.6)  
### インフラ・開発環境等  
・Docker/docker-compose  
・CircleCI (CI/CD)  
・Rubocop  
・RSpec  
・capistrano  
・AWS(Route53, ALB, ACM, VPC, EC2, S3)  
![develop_image](https://user-images.githubusercontent.com/56828853/76205428-8d37e880-623d-11ea-805b-45fc38e2a56f.png)


# 制作背景
アメリカの格言に「本棚を見ればその人がわかる」とあるように、持っている本を管理して『思考の見える化』が出来るアプリケーションがあったら便利だと思い作成しました。  
  

# 工夫した点
### 本棚の「見える化」
持っている本のジャンルが一目でわかる様にしたかったので、グラフを活用してわかりやすい表現をしたことです。  
![54 250 29 59_users_1 (1)](https://user-images.githubusercontent.com/56828853/72585131-36deb580-3930-11ea-82a7-5067a4131704.png)

### 読書の感想登録機能
登録した本を何度も読むことを想定し、読書をしたごとに感想を登録できるようして、読書のデータが残るようにしたことです。  
![54 250 29 59_books_5](https://user-images.githubusercontent.com/56828853/72337908-ba1cc300-3706-11ea-802b-d547ff74c371.png)  

### 読書の歴史の「見える化」
単に持っている本の管理ができるだけのアプリではなく、登録した本と自分との関係がわかる様にしたかったので、本ごとに『いつ読んだか・その時の感想文』などの読書の歴史を「見える化」して、過去に遡って自分との対話ができるようにしたことです。  
![54 250 29 59_books_2_impressions_8](https://user-images.githubusercontent.com/56828853/72678431-32113180-3ae9-11ea-8e51-0591d66feef1.png)

# 特徴
### ユーザー間の繋がり
それぞれのユーザーが本棚を公開すると、自分と価値観が似ているユーザーが見つかり自分も読書してみたい本が出てくると思い、読みたいリストという機能をつけたことです。
![54 250 29 59_users_1_follow_book](https://user-images.githubusercontent.com/56828853/72586726-2598a780-3936-11ea-973f-6f4fc1d073c0.png)  