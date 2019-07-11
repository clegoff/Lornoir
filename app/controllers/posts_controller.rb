class PostsController < ApplicationController
  def index
    @articles = Article.all
  end

  def signup

  end

  def show
    @article = Article.find(params[:id])
  end

  def new

  end

  def create
    @article = Article.new(post_params)

    if (@article.save)
      # redirect_to @article
    else
      render 'new'
    end
  end

  private def post_params
    params.require(:article).permit(:title, :body, :price, :path)
  end
end