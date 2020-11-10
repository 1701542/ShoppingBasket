Rails.application.routes.draw do
	get 'welcome/index'
  
	resources :products
	resources :accounts do
		resources :baskets
	end
  
	root 'welcome#index'
end
