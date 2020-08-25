class AddIndexToIngredient < ActiveRecord::Migration[6.0]
  def change
    add_index :ingredients, :name, unique: true
  end
end
