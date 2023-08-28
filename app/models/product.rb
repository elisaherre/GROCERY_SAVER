class Product < ApplicationRecord
  has_many :transactions
  belongs_to :user

  validates :name, :price, :expiration_date, :stock, presence: true
  validates :name, length: { minimum: 3 }
  validates :expiration_date, comparison: { greater_than_or_equal_to: Date.today }
  # validate :validate_date
  validates :stock, :price, numericality: { greater_than: 0 }
  CATEGORIES = %w[frescos procesados granos\ y \cereales bebidas congelados panadería\ y \repostería dietéticos\ y \suplementos orgánicos vegetarianos\ y \veganos]
  validates :category, inclusion: { in: CATEGORIES }

  has_one_attached :photo

  # def validate_date
  #   if expiration_date < Date.today
  #     "La fecha no puede ser menor a la actual"
  #   end
  # end
end
