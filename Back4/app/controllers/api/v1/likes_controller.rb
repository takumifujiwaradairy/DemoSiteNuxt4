class Api::V1::LikesController < ApplicationController
  before_action :set_article
  
  def create
    like = @article.likes.build(user_id: current_user.id)
    like.save
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end
end
