class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :age, presence: true
  
  has_secure_password
  validates :password, presence: true
  
  mount_uploader :image, ImageUploader
  
  has_many :chats,dependent: :destroy
    
  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'
end
