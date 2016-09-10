class AddFabricReferencesToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :fabric, foreign_key: true
  end
end
