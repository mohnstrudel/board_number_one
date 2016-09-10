class AddPictureToPatterns < ActiveRecord::Migration[5.0]
  def change
    add_column :patterns, :picture, :string
  end
end
