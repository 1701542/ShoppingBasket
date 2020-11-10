Rails.application.routes.draw do
	get 'welcome/index'
  
	resources :products
	resources :baskets do
		resources :basketProducts
	end
  
	root 'welcome#index'
end
