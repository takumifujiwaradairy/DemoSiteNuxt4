class Api::V1::ArticlesController < ApplicationController

  def create
    article = current_user.articles.build(article_params)
    if  article.save
      render json: article
    else
      render json:article.errors, status: 422
    end
  end
  
  private
  
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
