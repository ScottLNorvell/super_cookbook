class CreateCookbookIngredientAndRecipeTables < ActiveRecord::Migration
  def change
  	create_table :cookbooks do |t|
  		t.string :title
  		t.string :author
  		t.integer :publication_year

  		t.timestamps
  	end

  	create_table :ingredients do |t|
  		t.string :name
  		t.string :measurement
  		t.float :cost
  		t.string :image_url

  		t.timestamps
  	end

  	create_table :recipes do |t|
  		t.string :title
  		t.float :prep_time
  		t.integer :serving_size
  		t.text :instructions
  		t.string :image_url
  		
  		t.timestamps
  	end
  end
end
