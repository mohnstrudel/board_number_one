class Admin::Settings::PatternsController < AdminController
	
	before_action :find_pattern, only: [:edit, :update, :destroy]

	def index
		@patterns = Pattern.all
	end

	def new
		@pattern = Pattern.new
	end

	def create
		@pattern = Pattern.new(pattern_params)

		if @pattern.save
			redirect_to edit_admin_settings_pattern_path(@pattern), method: :get
			flash[:success] = "Успешно создано"
		else
			render 'new'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def edit
	end

	def update
		if @pattern.update(pattern_params)
			redirect_to edit_admin_settings_pattern_path(@pattern), method: :get
			flash[:success] = "Успешно обновлено"
		else
			render 'edit'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def destroy
		if @pattern.destroy
			redirect_to admin_settings_patterns_path, method: :get
			flash[:success] = "Удалено успешно"
		else
			render 'index'
			flash[:alert] = "Что-то пошло не так"
		end
	end


	private

	def pattern_params
		params.require(:pattern).permit(:name, :picture, :price)
	end

	def find_pattern
		@pattern = Pattern.find(params[:id])
	end

end
