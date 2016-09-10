class RemoveFabricFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :fabric, :string
  end
end
