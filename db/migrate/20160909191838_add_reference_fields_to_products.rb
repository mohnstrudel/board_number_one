class AddReferenceFieldsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :border, foreign_key: true
    add_reference :products, :color, foreign_key: true
    add_reference :products, :pattern, foreign_key: true
  end
end
