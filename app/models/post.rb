class Post < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :post_categories
  has_many :categories, through: :post_categories

  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true

end
