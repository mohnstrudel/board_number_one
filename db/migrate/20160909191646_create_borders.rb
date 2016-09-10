class CreateBorders < ActiveRecord::Migration[5.0]
  def change
    create_table :borders do |t|
      t.string :name

      t.timestamps
    end
  end
end
