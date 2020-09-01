class IngredientsController < ActionController::Base

  def index
    @ingredients = Ingredient.all

    render :index
  end
  
  def create
    @found = Ingredient.find_by({
      name: params[:post][:name]
    })
    
    if @found == nil then
      @newIngridient = Ingredient.new
      @newIngridient.name = params[:post][:name]
      @newIngridient.save
      
      @ingredients = Ingredient.all
    else
      
    end
    
    render :index
  end

end
