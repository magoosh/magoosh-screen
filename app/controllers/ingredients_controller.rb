class IngredientsController < ActionController::Base
  # Evan added this since we went with non-Rails helper method
  skip_before_action :verify_authenticity_token
  
  def index
    @ingredients = Ingredient.all

    render :index
  end
  
  def create
    @ingredient = Ingredient.new
    @ingredient.save
  end

end
