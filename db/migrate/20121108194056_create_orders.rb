class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :price
      t.string :address
      t.integer :postnr
      t.string :postort

      t.timestamps
    end
  end
end
