class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.string :fabric
      t.string :border
      t.string :color
      t.string :price
      t.string :pattern
      t.string :size
      t.text :description

      t.timestamps
    end
  end
end
