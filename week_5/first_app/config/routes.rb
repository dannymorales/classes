Rails.application.routes.draw do
 

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # resources :users
  # get '/users' to: 'users#index'

  

  get '/users', to: 'users#index'
  post '/users', to: 'users#create'  
  get '/users/new', to: 'users#new', as: 'new_user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  get '/users/:id', to: 'users#show', as: 'user'
  put '/users/:id', to: 'users#update'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  root 'home#index'
  

 

  get 'welcome/index'

  get 'welcome/contact'

  get 'welcome/about'

  get '/awesome', to: 'home#hello'

  
end
