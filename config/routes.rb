Rails.application.routes.draw do
  get 'posts/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/top' => 'root#top'
  # /topというURLにアクセスしたときに、rootコントローラのtopアクションが呼び出される
  post '/posts' => 'posts#create'
  #<form>でデータを送信して画面遷移する場合にpostを使う
  get '/posts' => 'posts#index'
  # /postsというURLでpostsコントローラのindexアクションを実行
  get '/posts/:id' => 'posts#show' , as: 'post'
  # 投稿1件ごとの詳細を表示する
  get '/posts/:id/edit' => 'posts#edit', as: 'edit_post'
  # 編集ページを表示する
  patch '/posts/:id' => 'posts#update', as: 'update_post'
end
