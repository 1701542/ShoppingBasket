Rails.application.routes.draw do
	get 'welcome/index'
	get '/products/show' => 'products#show'
	post '/basket_products/:id/add' => 'basket_products#quantity_add', as: 'basket_product_add'
	post '/basket_products/:id/reduce' => 'basket_products#quantity_reduce', as: 'basket_product_reduce'
	post '/basket_products/destroyall' => 'basket_products#destroyall', as: 'basket_product_destroyall'
	post 'basket_products' => 'basket_products#create'
  
	resources :products
	resources :basket_products
  
	root 'welcome#index'
end
