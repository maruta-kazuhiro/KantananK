# README

## アプリケーション名<br />
簡単アンケート！<br />

## アプリケーション概要<br />
アンケートを作成、回答し、その結果を確認できるアプリです。<br />

## URL<br />
https://kantanank.herokuapp.com/<br />

## Bsic認証<br />
ID:admin, Password:1234<br />

## テストアカウント<br />
test1@test(E-mail), aaaa12(Password)<br />

## 利用方法<br />
ログインをしていただくことで、アンケートを作成、回答する機能が利用できるようになります。（ログインしなくても結果は確認できます。）<br />
トップ画面中央にある「アンケートを作る！」を押すことでアンケートを作成することができます。質問の内容とそれに対する回答を３つ入力してください。（回答で記入したものが、実際に回答する際の選択肢になります。）入力が完了したら、「質問をする！」をクリックしてください。<br />
トップ画面に作成したアンケートが一覧となって表示されます。「回答する！」ボタンを押すことで、選択したアンケートに回答することができます。ラジオボタン にチェックを入れていただき、「送信する」をクリックしていただくことで回答することができます。（回答は複数回答が可能です。）<br />
「結果を見る」をクリックするとアンケートごとの回答を確認することができます。<br />

## 目指した課題解決<br />
前職でアンケートを集計する作業がありました。紙で書いてもらって、回収、集計するのに結構時間がかかり手間だと感じていたので、もっと簡単に作業ができて、自動で集計してくれるアプリがあれば便利じゃないかと感じ作成しました。<br />

## 要件定義<br />
### アンケート作成機能<br />
#### 目的<br />
アンケートを作成し共有するため <br />
#### 機能<br />
・回答する内容について、質問を入力し表示する<br />
・どのユーザーも質問することができる<br />
・選択肢多すぎても回答が手間になるので３つとする<br /><br />
### •アンケート回答機能<br />
#### 目的<br />
作成されたアンケートに回答するため<br />
#### 機能<br />
・簡単に回答することができるように、回答にはラジオボタンを使う<br />
・アンケートには複数回答可能とする<br />
・回答した内容がDBに、アンケートの種類ごとに保存される<br /><br />
### •アンケート集計機能<br />
#### 目的<br />
回答されたアンケートを集計できるようにする<br />
#### 機能<br />
・質問と回答されたアンケートがあることが前提となる<br />
・回答されたものを一覧で表示できる<br />
・回答したアンケートごとに結果を表示できるようにする<br /><br />
### •ユーザー管理機能<br />
#### 目的<br />
ユーザー登録することで機能を利用できるようにする<br />
#### 機能<br />
・ログインしていないものが編集や削除をできないようにする<br />
・アンケートを作成、回答の際にユーザー登録が必要であるが、結果だけは見られるようにする<br />

## 実装した機能についてのGIFと説明<br />
実装した機能について、それぞれどのような特徴があるのか列挙しましょう。GIFを添えることで、イメージがしやすくなります。<br />

## データベース設計<br />
### users テーブル
| Column           | Type     | Options                          |
| ---------------  | -------- | -------------------------------- |
| nickname         | string   | null:false                       |
| email            | string   | null:false                       |
| password         | string   | null:false                       |
#### Association
- has_many : anks
- has_many : answers

### anks テーブル
| Column              | Type       | Options                          |
| ------------------- | ---------- | -------------------------------- |
| name                | string     | null:false                       |
| image               | string     |                                  |
| question            | string     | null:false                       |
| answer1             | string     | null:false                       |
| answer2             | string     | null:false                       |
| answer3             | string     | null:false                       |
| user                | references | null:false, foreign_key:true     |
#### Association
- belongs_to : user
- has_many : answers

### answers テーブル
| Column              | Type       | Options                          |
| ------------------- | ---------- | -------------------------------- |
| user                | references | null:false, foreign_key:true     |
| ank                 | references | null:false, foreign_key:true     |
#### Association
- belongs_to : users
- belongs_to : anks

画面遷移図は[画面遷移図.drawio]に、ER図は[ER図.drawio]に記載しています<br />

## ローカルでの動作方法<br />
ruby version 2.6.5<br />
$ git clone https://github.com/maruta-kazuhiro/KantananK<br />
$ cd kantanank<br />
$ bundle install<br />
$ rails db:create<br />
$ rails db:migrate<br />
$ rails s<br />
$ http://localhost:3000<br />