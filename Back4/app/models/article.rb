class Article < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  attr_accessor :likes_count, :is_like
end
