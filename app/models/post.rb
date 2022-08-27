class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :genre_id, numericality: { other_than: 1, message: "can't be blank" }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :user  
  has_many :comments, dependent: :destroy
end
