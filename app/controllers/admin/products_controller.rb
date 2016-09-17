class Admin::ProductsController < AdminController

	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	
end
