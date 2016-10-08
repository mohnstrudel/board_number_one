Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  scope module: :front do 
    root 'static_pages#index'

    resources :products
  end

  namespace :admin do
  	get '', to: 'dashboard#index', as: "/"

    resources :products

  	namespace :settings do
  		resources :borders
  		resources :colors
  		resources :patterns
  		resources :categories
      resources :fabrics
      resources :sizes
  	end
  end
end
