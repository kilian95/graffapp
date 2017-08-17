class AddTypeToMurals < ActiveRecord::Migration[5.0]
  def change
    add_column :murals, :type, :string
  end
end
