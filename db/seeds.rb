# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cookbook.delete_all
Recipe.delete_all
Ingredient.delete_all

c = Cookbook.create title: "Scott Shares the Love", author: "Scott", publication_year: 2013

c.recipes << Recipe.new( title: "Squid Salad")

r = c.recipes.first

r.ingredients << Ingredient.new( name: "Squid" )