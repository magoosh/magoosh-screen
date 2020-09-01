# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

desc 'Migrate files'
task migrate: :environment do
    file = File.open("./ingredients.txt")
    file_data = file.read.split
    
    file_data.each do |name|
        @newIngredient = Ingredient.new
        @newIngredient.name = name
        @newIngredient.save
    end
    
    puts file_data
end