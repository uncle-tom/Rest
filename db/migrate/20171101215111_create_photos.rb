class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
			t.references :house
			t.integer :user_id
			t.integer :house_id
			t.integer :priority
      t.string :img
      t.timestamps
    end
  end
end
