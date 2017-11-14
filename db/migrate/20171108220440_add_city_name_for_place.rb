class AddCityNameForPlace < ActiveRecord::Migration[5.1]
  def change
  	add_column :places, :cityname, :string
  end
end
