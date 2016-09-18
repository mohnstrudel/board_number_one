class Fabric < ApplicationRecord
	mount_uploader :picture, PictureUploader

	has_many		:productfabrics
	has_many		:products, through: :productfabrics

	# accepts_nested_attributes_for :productfabrics
end
