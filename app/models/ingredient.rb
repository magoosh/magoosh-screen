class Ingredient < ApplicationRecord
    # before_commit :validate_unique_ingredient_name
    
    private 
    
    # This can be an option if we don't have an index
    # def validate_unique_ingredient_name
    #     ingredient = Ingredient.find_by(name: name)
    #     return false if ingredient.present?
    # end
end
