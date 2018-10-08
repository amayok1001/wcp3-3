# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## マスアサインメント脆弱性
    https://qiita.com/tbpgr/items/63028f5e19a2d1617e40
    ⇨ Railsではこれを防ぐための「ストロングパラメータ」という仕組   みがある
    ＊ストロングパラメータのコード
    　def post_params
        params.require(:model).permit(:カラム名1, :カラム名....)


## ツール
### gem(ジェム)
    画像投稿機能 gem 'refile'
    
