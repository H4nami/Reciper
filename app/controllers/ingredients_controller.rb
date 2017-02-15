class IngredientsController < ApplicationController

  def ingredients
    @ingredients = Ingredient.all
  end

  
end
