class Recipe < ActiveRecord::Base
	attr_accessible :title, :prep_time, :serving_size, :instructions, :image_url
	belongs_to :cookbook
	has_and_belongs_to_many :ingredients

end