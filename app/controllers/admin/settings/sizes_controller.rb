class Admin::Settings::SizesController < AdminController
	
	before_action :find_size, only: [:edit, :update, :destroy]

	def index
		@sizes = Size.all
	end

	def new
		@size = Size.new
	end

	def create
		@size = Size.new(size_params)

		if @size.save
			redirect_to edit_admin_settings_size_path(@size), method: :get
			flash[:success] = "Успешно создано"
		else
			render 'new'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def edit
	end

	def update
		if @size.update(size_params)
			redirect_to edit_admin_settings_size_path(@size), method: :get
			flash[:success] = "Успешно обновлено"
		else
			render 'edit'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def destroy
		if @size.destroy
			redirect_to admin_settings_sizes_path, method: :get
			flash[:success] = "Удалено успешно"
		else
			render 'index'
			flash[:alert] = "Что-то пошло не так"
		end
	end


	private

	def size_params
		params.require(:size).permit(:name)
	end

	def find_size
		@size = Size.find(params[:id])
	end

end

