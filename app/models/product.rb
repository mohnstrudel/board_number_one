class Product < ApplicationRecord
  belongs_to	:category

  has_many		:productcolors, dependent: :destroy
  has_many		:colors, through: :productcolors
  # accepts_nested_attributes_for :productcolors

  has_many		:productfabrics, dependent: :destroy
  has_many		:fabrics, through: :productfabrics
  # accepts_nested_attributes_for :productfabrics

  has_many		:productpatterns, dependent: :destroy
  has_many		:patterns, through: :productpatterns

  has_many		:productsizes, dependent: :destroy
  has_many		:sizes, through: :productsizes

  has_many		:productborders, dependent: :destroy
  has_many		:borders, through: :productborders

  has_many		:pictures, dependent: :destroy
  accepts_nested_attributes_for :pictures, allow_destroy: true
end
