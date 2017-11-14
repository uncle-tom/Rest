class Photo < ApplicationRecord
	belongs_to :user, optional: true
  belongs_to :house, optional: true

  mount_uploader :img, ImgUploader
end
