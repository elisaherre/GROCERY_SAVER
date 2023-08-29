class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :price, presence: true
  validates :mode, presence: true
  validates :mode, inclusion: { in: ["buy", "sell"] }
end
