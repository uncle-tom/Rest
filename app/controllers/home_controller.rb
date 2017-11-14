class HomeController < ApplicationController
	def index
		@first_cat = Category.where(name: 'Карпаты')
		@first_place = City.where(name: 'Коломыя')
		@category = Category.all
		@cities = City.order("RANDOM()")
	end
end