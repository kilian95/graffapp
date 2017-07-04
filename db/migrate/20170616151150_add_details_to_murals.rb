class AddDetailsToMurals < ActiveRecord::Migration[5.0]
  def change
    add_column :murals, :lat, :real
  	add_column :murals, :long, :real
  end
end
