class Front::StaticPagesController < FrontController
	def index
		@products = Product.all
	end
end
