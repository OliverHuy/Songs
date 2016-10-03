Rails.application.routes.draw do

  devise_for :users
	root 'singers#index'

	get '/singers' => 'singers#index'
  
	get '/singers/new' => 'singers#new'

	post '/singers' => 'singers#create'

	get '/singers/:id' => 'singers#show', as: :singer

	get '/singers/:id/edit' => 'singers#edit', as: :edit_singer

	patch '/singers/:id' => 'singers#update'

	delete '/singers/:id' => 'singers#destroy', as: :delete_singer

end

