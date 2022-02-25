class Api::V1::ArticlesController < ApplicationController
  before_action :set_article , only:[:destroy]

  def index
    articles = Article.all
    render json: articles
  end

  def create
    article = current_user.articles.build(article_params)
    if  article.save
      render json: article
    else
      render json:article.errors, status: 422
    end
  end

  def destroy
    if @article.user_id == current_user.id
      @article.destroy
    end
  end
  
  private

  def set_article
    @article = Article.find(params[:id])
  end
  
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
