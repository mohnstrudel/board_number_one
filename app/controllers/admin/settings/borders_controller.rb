class Admin::Settings::BordersController < AdminController
before_action :find_border, only: [:edit, :update, :destroy]

	def index
		@borders = Border.all
	end

	def new
		@border = Border.new
	end

	def create
		@border = Border.new(border_params)
		if @border.save
			redirect_to edit_admin_settings_border_path(@border), method: :get
			flash[:success] = "Успешно создано"
		else
			render 'new'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def edit
	end

	def update
		if @border.update(border_params)
			redirect_to edit_admin_settings_border_path(@border), method: :get
			flash[:success] = "Успешно обновлено"
		else
			render 'edit'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def destroy
		if @border.destroy
			redirect_to admin_settings_borders_path, method: :get
			flash[:success] = "Удалено успешно"
		else
			render 'index'
			flash[:alert] = "Что-то пошло не так"
		end
	end


	private

	def border_params
		params.require(:border).permit(:name)
	end

	def find_border
		@border = Border.find(params[:id])
	end

end
