class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def index

  end

  def show

    @article = Article.find(params[:id])

  end

  def create

    #store new article in database
    @article = Article.new(article_params)

    if @article.save

      #flash user message
      #       V style             V msg
      flash[:success] = "Article inserted in database"

      #redirect
      redirect_to article_path('new') #go back to new article page
    else
        render 'new' #go again to new article page
    end

  end

  private
  def article_params
    params.require(:article).permit(:title, :description)
  end


end
