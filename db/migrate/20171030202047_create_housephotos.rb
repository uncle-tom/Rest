class CreateHousephotos < ActiveRecord::Migration[5.1]
  def change
    create_table :housephotos do |t|
			t.references :house
			t.integer :user_id
			t.integer :house_id
			t.integer :priority
      t.string :houseimg
      t.timestamps
    end
  end
end
