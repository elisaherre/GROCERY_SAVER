class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_many :products
  has_many :transactions
  has_one_attached :photo
end
