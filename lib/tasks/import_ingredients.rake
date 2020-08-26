namespace :db do
    task import_ingredients: :environment do
        puts import_data ? "Success!" : "Error!"
    end
    
    def import_data
        ActiveRecord::Base.transaction do
            File.read("#{Rails.root}/ingredients.txt").split.each do |line|
                puts "Importing #{line}..."
                Ingredient.create!(name: line)
                Ingredient.create({name: line})
            end
        end
    end
end
