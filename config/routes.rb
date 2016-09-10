Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'dashboard#index'

  namespace :admin do
  	get '', to: 'dashboard#index', as: "/"

  	namespace :settings do
  		resources :borders
  		resources :colors
  		resources :patterns
  		resources :categories
      resources :fabrics
  	end
  end
end
