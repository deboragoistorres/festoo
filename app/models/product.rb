class Product < ApplicationRecord
  has_many :bookings
  validates :name, presence: true
  validates :description, presence: true
  validates :category, inclusion: { in: ['festa de aniversário', 'festa infantil', 'festa corporativa'] }
  validates :price, presence: true
  # validates :amount, presence: true
end
