class Product < ApplicationRecord
  belongs_to	:category

  has_many		:colors
  has_many		:borders
  has_many		:fabrics
  has_many		:patterns

  has_many		:pictures, dependent: :destroy
  accepts_nested_attributes_for :pictures, allow_destroy: true
end
