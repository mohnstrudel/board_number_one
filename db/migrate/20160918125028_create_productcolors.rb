class CreateProductcolors < ActiveRecord::Migration[5.0]
  def change
    create_table :productcolors do |t|
      t.references :product, foreign_key: true
      t.references :color, foreign_key: true

      t.timestamps
    end
  end
end
