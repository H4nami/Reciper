class Recipe < ApplicationRecord
  belongs_to :ingredient
  belongs_to :meal
  belongs_to :user
end
