class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
    	t.string :name
      t.text :description
      t.integer :city_id
      t.integer :category_id
      t.integer :type_id
      t.timestamps
    end
  end
end
