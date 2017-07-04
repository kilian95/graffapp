class AddImagesToGallery < ActiveRecord::Migration[5.0]
  def change
  	add_column :murals, :images, :string, array: true, default: []
  end
end
