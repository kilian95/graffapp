class Mural < ApplicationRecord
	 mount_uploader :image, ImageUploader
end
