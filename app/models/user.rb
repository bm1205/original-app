class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :age, presence: true
  
  has_secure_password
  validates :password, presence: true
  
  mount_uploader :image, ImageUploader
  
  has_many :chats,dependent: :destroy
end
