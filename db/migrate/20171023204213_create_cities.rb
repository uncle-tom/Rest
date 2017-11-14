class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
			t.string :name
      t.text :text
      t.integer :category_id
      t.timestamps
    end
  end
end
