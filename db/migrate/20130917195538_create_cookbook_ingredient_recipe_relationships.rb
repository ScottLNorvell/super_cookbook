class CreateCookbookIngredientRecipeRelationships < ActiveRecord::Migration
  
	def change
		add_column :recipes, :cookbook_id, :integer

		create_table :ingredients_recipes, id: false do |t|
			t.integer :ingredient_id
			t.integer :recipe_id

		end

	end

end
