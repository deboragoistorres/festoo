class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :name, presence: true
  validates :description, presence: true
  validates :category, inclusion: { in: ['festa de aniversário', 'festa infantil', 'festa corporativa', 'happy-hour', 'churrasco'] }
  validates :price, presence: true
  validates :amount, presence: true, inclusion: { in: (1..50) }, numericality: { only_integer: true }
end
