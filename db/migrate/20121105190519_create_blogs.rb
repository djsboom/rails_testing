class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :name
      t.string :date
      t.string :entry

      t.timestamps
    end
  end
end
