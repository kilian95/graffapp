class RenameTypeToGroup < ActiveRecord::Migration[5.0]
  def change
  	rename_column  :murals, :type, :group
  end
end
