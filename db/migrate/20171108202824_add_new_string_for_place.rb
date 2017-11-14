class AddNewStringForPlace < ActiveRecord::Migration[5.1]
  def change
  	add_column :places, :street, :string
  	add_column :places, :phone, :integer
  	add_column :places, :site, :string
  	add_column :places, :time_work, :string
  	add_column :places, :cover_photo_id, :integer
  end
end
