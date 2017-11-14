class City < ApplicationRecord
	belongs_to :category
	has_many :houses
	has_many :places

	mount_uploader :cover, CityCoverUploader
end
