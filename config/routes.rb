Rails.application.routes.draw do
	get 'welcome/index'
  
	resources :products
	resources :baskets do
		resources :basket_products
	end
  
	root 'welcome#index'
end
