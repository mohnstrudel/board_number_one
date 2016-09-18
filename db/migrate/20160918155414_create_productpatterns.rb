class CreateProductpatterns < ActiveRecord::Migration[5.0]
  def change
    create_table :productpatterns do |t|
      t.references :product, foreign_key: true
      t.references :pattern, foreign_key: true

      t.timestamps
    end
  end
end
