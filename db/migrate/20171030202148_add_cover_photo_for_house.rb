class AddCoverPhotoForHouse < ActiveRecord::Migration[5.1]
  def change
  	add_column :houses, :cover_photo_id, :string
  end
end
