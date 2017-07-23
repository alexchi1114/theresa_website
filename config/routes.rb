Rails.application.routes.draw do

	get '/forms', to: 'static_pages#forms'

	get '/staff', to: 'static_pages#staff'

	get '/location', to: 'static_pages#location'

	root 'static_pages#home'

	resources :contacts, only: [:new, :create]

end
