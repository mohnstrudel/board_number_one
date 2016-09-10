class AddPictureToFabrics < ActiveRecord::Migration[5.0]
  def change
    add_column :fabrics, :picture, :string
  end
end
