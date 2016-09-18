class CreateProductfabrics < ActiveRecord::Migration[5.0]
  def change
    create_table :productfabrics do |t|
      t.references :product, foreign_key: true
      t.references :fabric, foreign_key: true

      t.timestamps
    end
  end
end
