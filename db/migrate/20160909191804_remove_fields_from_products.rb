class RemoveFieldsFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :border, :string
    remove_column :products, :color, :string
    remove_column :products, :pattern, :string
  end
end
