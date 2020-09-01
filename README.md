# Magoosh Code Screen

## Scenario

We’re building a new Food and Recipe web application! We’ve just started, and  wwe’re still working on the basics. Right now we just have a page that lists all the ingredients in our database, and we need to progress on a few more initial features.

For each exercise, implement a solution in this Ruby on Rails project. Write a short description (in this file is fine) of your approach, and discuss any other alternative approaches you considered, and why you went with your chosen approach. 

## Exercise #1

Implement a feature to add new ingredients. Provide the user with a simple interface where they can supply the name for a new ingredient and save it to the database. This can be done on a new page, or using the existing index page.

## Exercise #2

We’ve received a list of ingredients that we need to import into our database. The list is in a text file at the root of the project, named ingredients.txt. Write a rake task to import this data. 

## Exercise #3

The next feature we're planning to implement in this project is Recipes. A recipe consists of a name, a list of ingredients with amounts, and steps. Design and describe the data model you would suggest for this feature.


ingredient_recipe
 id
 -ingredient_id
 -recipe_id
 -amount
 -unit
 
 steps
  -step_number -> 1
  -recipe_id
  -step -> "Add X to Y"
  -use_ingredient_recipe -> ingredient_recipe_id
 

## Exercise #4

We noticed that there’s no protection against an ingredient existing in our database more than once. Implement changes to the project, and to your solution from Exercises #1 and #2, if appropriate, to ensure duplicate ingredients are not allowed. We also need to ensure any duplicate ingredients are removed from the production database.

## Exercise #5

We haven't written any tests! Write tests to cover your solutions to Exercise #1 and #4. These tests should ensure duplicate ingredients aren't allowed, and that the new controller actions work as expected. What other tests would you suggest be written for this project?
