class Color < ApplicationRecord
	mount_uploader :picture, PictureUploader
end
