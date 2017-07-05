class AddImageToMurals < ActiveRecord::Migration[5.0]
  def change
    add_column :murals, :image, :string
  end
end
