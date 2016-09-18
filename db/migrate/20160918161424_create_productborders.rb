class CreateProductborders < ActiveRecord::Migration[5.0]
  def change
    create_table :productborders do |t|
      t.references :product, foreign_key: true
      t.references :border, foreign_key: true

      t.timestamps
    end
  end
end
