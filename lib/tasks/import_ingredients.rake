namespace :cooking do
    task(:import_ingredients, [:file] => :environment) do |t, args|
        raise 'Need file' unless args[:file]
            
        File.readlines(args[:file]).each do |line|
            Ingredient.create(name: line)
        end
    end
    
    task remove_duplicates: :environment do 
        File.readlines(args[:file]).each do |line|
            Ingredient.create(name: line)
        end
    end
end