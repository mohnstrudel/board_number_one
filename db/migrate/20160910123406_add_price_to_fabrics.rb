class AddPriceToFabrics < ActiveRecord::Migration[5.0]
  def change
    add_column :fabrics, :price, :string
    add_column :fabrics, :float, :string
  end
end
