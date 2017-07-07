class AddYearToMurals < ActiveRecord::Migration[5.0]
  def change
  	remove_column :murals, :year, :datetime
  	add_column :murals, :year, :int
  end
end
