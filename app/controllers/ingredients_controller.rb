class IngredientsController < ActionController::Base

  def index
    @ingredients = Ingredient.all
    render :index
  end

  def new
    @ingredient = Ingredient.new
  end
  
  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to ingredients_path
    else
      render :new
    end
  end
  
  private
  
  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
