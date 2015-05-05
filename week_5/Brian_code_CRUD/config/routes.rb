Rails.application.routes.draw do
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # resources :users
  
  
  get '/users', to: 'users#index'
  post '/users', to: 'users#create'
  get '/users/new', to: 'users#new', as: 'new_user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  get '/users/:id', to: 'users#show', as: 'user'
  put '/users/:id', to: 'users#update'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'
  

  get '/welcome', to: 'welcome#index'
  get '/welcome/contact', to: 'welcome#contact', as: 'contact'
  get 'welcome/about'

  # You can have the root of your site routed with "root"
  root 'home#index'

  # the first part of the destination string is the controller
  # the second part is the action
  get '/awesome' => 'home#awesome'

  # alternate syntax
  get '/hello', to: 'home#hello'
end
