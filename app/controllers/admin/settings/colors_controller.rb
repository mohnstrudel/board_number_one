class Admin::Settings::ColorsController < AdminController
	
	before_action :find_color, only: [:edit, :update, :destroy]

	def index
		@colors = Color.all
	end

	def new
		@color = Color.new
	end

	def create
		@color = Color.new(color_params)

		if @color.save
			redirect_to edit_admin_settings_color_path(@color), method: :get
			flash[:success] = "Успешно создано"
		else
			render 'new'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def edit
	end

	def update
		if @color.update(color_params)
			redirect_to edit_admin_settings_color_path(@color), method: :get
			flash[:success] = "Успешно обновлено"
		else
			render 'edit'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def destroy
		if @color.destroy
			redirect_to admin_settings_colors_path, method: :get
			flash[:success] = "Удалено успешно"
		else
			render 'index'
			flash[:alert] = "Что-то пошло не так"
		end
	end


	private

	def color_params
		params.require(:color).permit(:name, :picture, :hex)
	end

	def find_color
		@color = Color.find(params[:id])
	end

end
