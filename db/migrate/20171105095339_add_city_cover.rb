class AddCityCover < ActiveRecord::Migration[5.1]
  def change
  	add_column :cities, :cover, :string
  end
end
