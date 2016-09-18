class Admin::ProductsController < AdminController

	before_action :find_product, only: [:edit, :update, :destroy]

	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def edit
	end

	def create
		@product = Product.new(product_params)

		if @product.save
			redirect_to edit_admin_product_path(@product), method: :get
			flash[:success] = "Успешно создано"
		else
			render 'new'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def destroy
		if @@product.destroy
			
			redirect_to admin_products_path
			flash[:alert] = 'Удалено успешно'
		else
			render 'index'
		end
	end

	def update
		if @product.update(product_params)
			# debug
			if params[:pictures]
				params[:pictures].each { |image| @product.pictures.create(image: image) }
			end
			redirect_to edit_admin_product_path(@product)
			flash[:success] = "Успешно обновлено"
		else
			render 'edit'
		end

	end


	private

	def product_params
		params.require(:product).permit(:name, :category_id, :description, :price, 
			{ color_ids: [] }, { fabric_ids: [] }, { pattern_ids: [] }, { border_ids: [] }, { size_ids: [] }, 
			pictures_attributes: [ :id, :image, :product_id, :_destroy ])
	end

	def find_product
		@product = Product.find(params[:id])
	end
end
