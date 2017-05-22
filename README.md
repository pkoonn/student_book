# Student_book
  学校の創造演習という授業で作成したWebアプリケーションです。学生の出席状況や授業情報をこのアプリで確認、登録することが可能です。
# 実行環境
  - Rails 5.0.3
  - ruby 2.3.1p112[x86_64-darwin15]
  - psql（PostgreSQL）9.6.3
  - MaxOS

# MEMO
 もしこのアプリケーションのER図を作成したければ**graphviz**をインストール
 ```sh
 $ brew install graphviz
 ```
 実行方法
 ```sh
 $ bundle exec rake erd
 ```
 **/docs**にER図がpngで作成される

# Installation
 ## MaxOSの場合
 student_bookリポジトリをclone
 ```sh
 $ git clone git@github.com:pkoonn/student_book.git
 ```
 bundle install
 ```sh
 $ bundle install
 ```
 psqlにログイン後、student_bookデータベースを作成
 ```sh
 postgres>= create database student_book;
 postgres>= create database studnet_book_development;
 postgres>= create database student_book_test;
 ```
 リポジトリのルートディレクトリでデータベース作成
 ```sh
 $ rake db:drop
 $ rake db:create
 $ rake db:migrate
 ```
 # Team
  - [hakugln](https://github.com/hakugln)
  - [i13abe](https://github.com/i13abe)
