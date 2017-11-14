class Place < ApplicationRecord
	belongs_to :city

	geocoded_by :address
	def address
	  [cityname, street].compact.join(', ')
	end
	after_validation :geocode  
end
