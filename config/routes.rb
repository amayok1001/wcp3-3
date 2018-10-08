Rails.application.routes.draw do
  get 'posts/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/top' => 'root#top'
  # /topというURLにアクセスしたときに、rootコントローラのtopアクションが呼び出される
  post '/posts' => 'posts#create'
  #<form>でデータを送信して画面遷移する場合にpostを使う
  
end