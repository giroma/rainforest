class Product < ApplicationRecord

  has_many :reviews

  validates :name, :description, :price, presence: true
  validates :price, numericality: { only_integer:  true }


end
