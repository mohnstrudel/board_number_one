class Pattern < ApplicationRecord
	mount_uploader :picture, PictureUploader

	has_many		:productpatterns, dependent: :destroy
	has_many		:products, through: :productpatterns
end
