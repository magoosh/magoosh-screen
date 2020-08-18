class IngredientsController < ActionController::Base

  def index
    @ingredients = Ingredient.all

    render :index
  end

  def create
    Ingredient.create(name: params[:ingredient])

    redirect_to ingredients_url
  end

end
