Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get '/enter', to: 'sessions#new'
  #create a new session
  post '/enter', to: 'sessions#create'
  #logout
  get '/logout', to: 'sessions#destroy'


	resource :students, only: [:create]
	get '/class-attendance', to: 'students#new'
  get '/class-attendance/students', to: 'students#index'

	get 'users/new'
  post '/users', to: 'users#create'

  root to: 'sessions#new'
end