class AddInfoToMurals < ActiveRecord::Migration[5.0]
  def change
  	add_column :murals, :artist, :string
  	add_column :murals, :year, :datetime
  end
end
