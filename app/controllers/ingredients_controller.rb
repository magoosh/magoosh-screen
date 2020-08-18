class IngredientsController < ActionController::Base

  def index
    @ingredients = Ingredient.all

    render :index
  end

end
