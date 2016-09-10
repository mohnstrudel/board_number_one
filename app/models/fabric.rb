class Fabric < ApplicationRecord
	mount_uploader :picture, PictureUploader
end
