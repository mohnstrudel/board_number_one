class Size < ApplicationRecord

  has_many		:productsizes, dependent: :destroy
  has_many		:products, through: :productsizes

end
