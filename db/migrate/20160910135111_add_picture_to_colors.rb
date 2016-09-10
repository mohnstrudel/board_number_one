class AddPictureToColors < ActiveRecord::Migration[5.0]
  def change
    add_column :colors, :picture, :string
  end
end
