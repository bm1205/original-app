class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :age, presence: true
  validates :residence, presence: true
  
  has_secure_password
end
