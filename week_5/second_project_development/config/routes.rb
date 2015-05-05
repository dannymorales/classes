Rails.application.routes.draw do
  
  root 'home#index'

  get '/users', to: 'users#index'
  post '/users', to: 'users#create'
  get '/users/new', to: 'users#new', as: 'new_user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  put '/users/:id', to: 'users#update'

  # get 'sessions/new'

  # get 'users/index'

  # get 'users/new'

  # get 'users/edit'

  # get 'users/show'

  

 
end
