class Housephoto < ApplicationRecord
	belongs_to :house
	belongs_to :user

	mount_uploaders :houseimg, HousephotosUploader
end
