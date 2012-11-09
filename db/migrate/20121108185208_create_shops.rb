class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :img
      t.string :desc
      t.integer :price
      t.integer :stock

      t.timestamps
    end
  end
end
