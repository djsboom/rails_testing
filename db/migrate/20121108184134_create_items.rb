class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.integer :stock
      t.string :desc
	t.string :img

      t.timestamps
    end
  end
end
