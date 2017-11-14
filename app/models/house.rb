class House < ApplicationRecord
	belongs_to :city
	has_many :photos
	def city_own
	  City.find_by(id: self.city_id) if self.city_id
	end
	def cover_photo
	  Photo.find_by(id: self.cover_photo_id) if self.cover_photo_id
	end
	def user_own
	  User.find_by(id: self.user_id) if self.user_id
	end
end
