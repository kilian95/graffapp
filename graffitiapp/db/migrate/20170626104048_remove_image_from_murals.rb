class RemoveImageFromMurals < ActiveRecord::Migration[5.0]
  def change
  	remove_column :murals, :image
  end
end
