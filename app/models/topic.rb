class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :post, presence: true
  #validates :image, presence: true
  #validates :category, presence: true
  
  belongs_to :user
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: 'user'
  mount_uploader :image, ImageUploader
end
