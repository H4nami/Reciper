class Meal < ApplicationRecord
  has_many :recipes
  has_many :ingredients, through: :recipes
  has_one :quantity
end
