class Post < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :post_categories
  has_many :categories, through: :post_categories

  has_many :comments, dependent: :destroy
  belongs_to :user

  has_many :likes, dependent: :destroy
  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end

  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true

end
