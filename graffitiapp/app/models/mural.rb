class Mural < ApplicationRecord
	mount_uploaders :images, ImageUploader
end