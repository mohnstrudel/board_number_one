class Color < ApplicationRecord
	mount_uploader :picture, PictureUploader

	has_many :productcolors
	has_many :products, through: :productcolors

	accepts_nested_attributes_for :productcolors
end
