class Api::V1::LikesController < ApplicationController
  before_action :set_article

  def create
    like = @article.likes.build(user_id: current_user.id)
    if like.save
      article_count = @article.likes.count
      render json: article_count
    end
  end

  def destroy
    like = @article.likes.find_by(user_id: current_user.id)
    if like.destroy
      likes_count = @article.likes.count
      render json: likes_count
    end
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end
end
