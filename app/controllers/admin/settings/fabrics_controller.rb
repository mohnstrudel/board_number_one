class Admin::Settings::FabricsController < AdminController

	before_action :find_fabric, only: [:edit, :update, :destroy]

	def index
		@fabrics = Fabric.all
	end

	def new
		@fabric = Fabric.new
	end

	def create
		@fabric = Fabric.new(fabric_params)

		if @fabric.save
			redirect_to edit_admin_settings_fabric_path(@fabric), method: :get
			flash[:success] = "Успешно создано"
		else
			render 'new'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def edit
	end

	def update
		if @fabric.update(fabric_params)
			redirect_to edit_admin_settings_fabric_path(@fabric), method: :get
			flash[:success] = "Успешно обновлено"
		else
			render 'edit'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def destroy
		if @fabric.destroy
			redirect_to admin_settings_fabrics_path, method: :get
			flash[:success] = "Удалено успешно"
		else
			render 'index'
			flash[:alert] = "Что-то пошло не так"
		end
	end


	private

	def fabric_params
		params.require(:fabric).permit(:name, :picture, :price)
	end

	def find_fabric
		@fabric = Fabric.find(params[:id])
	end

end
