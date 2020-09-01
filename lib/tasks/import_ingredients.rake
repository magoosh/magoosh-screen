desc 'Import ingredients from text file'

namespace :ingredients do
    task import: :environment do
        puts 'Started to import'
        File.open('ingredients.txt', 'r') do |file|
            file.readlines.each do |ingredient|
               Ingredient.create({ name: ingredient }) 
            end
        end
        
        # Ingredient.create(ingredients)
    end
end