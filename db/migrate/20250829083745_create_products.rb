class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :color
      t.string :size
      t.string :material

      t.timestamps
    end
  end
end
