class WelcomeController < ApplicationController

  def home

    @article = Article.all

  end

  def about

  end

end
