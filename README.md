# README

テーブルスキーマ

tasks model 
  string "title" 
  text "content" 
  bigint "user_id"

users model
  string "name" 
  string "email" 
  string "password_digest"


Herokuへのデプロイ手順
1.ログイン
  heroku login
2.Assetプリコンパイル
  rails assets:precompile RAILS_ENV=production
3.git add & git commit
  git add -A
  git commit -m "init"
4.heroku create
  heroku create
5.heroku stackを18に変更
  heroku stack:set heroku-18
6.デプロイ出来ない場合、下記をbuildpackを入れる
  heroku buildpacks:set heroku/ruby ※デプロイ出来ない場合
  heroku buildpacks:add --index 1 heroku/nodejs ※デプロイ出来ない場合
7.Heroku master (or main)にpush
  git push heroku master( or main)
8.heroku内でマイグレーション
  heroku run rails db:migrate
9.herokuサーバーを再起動
  heroku restart
10. アクセスして動作確認  
  heroku config 
