class PostsController < ApplicationController
  def new
      # 空のモデルをビューへ渡す
      @post = Post.new
  end
  def create
    # ストロングパラメーターを使用
      post = Post.new(post_params)
    # DBへ保存する
      post.save
    # トップ画面へリダイレクト
      redirect_to '/top'
  end
  def index
      @posts = Post.all
  end
  def show
  end

    #privateと書くとアクションとして認識されない
    #Controllerファイルの一番下、endのすぐ上に書く
    private
    def post_params
        params.require(:post).permit(:title, :body)
    end
end
