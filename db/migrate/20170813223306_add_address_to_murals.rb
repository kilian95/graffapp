class AddAddressToMurals < ActiveRecord::Migration[5.0]
  def change
    add_column :murals, :address, :string
  end
end
