class RemoveAddressFromMurals < ActiveRecord::Migration[5.0]
  def change
  	remove_column :murals, :address
  end
end
