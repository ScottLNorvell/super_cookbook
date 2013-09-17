class Cookbook < ActiveRecord::Base
	attr_accessible :title, :author, :publication_year
	has_many :recipes
end