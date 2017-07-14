Rails.application.routes.draw do

	get '/forms', to: 'static_pages#forms'

	get '/staff', to: 'static_pages#staff'

	root 'static_pages#home'

end
