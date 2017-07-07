class Mural < ApplicationRecord
	mount_uploaders :images, ImageUploader
	validates :images, :presence => {:message => "must be uploaded. "}
	validates :lat, :long, :presence => {:message => "No marker placed on Map. "}

end