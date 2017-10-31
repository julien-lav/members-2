Rails.application.routes.draw do



  get 'sessions/new'

  get '/secret_pages', to: 'static_pages#secret_pages', as: 'secret'


  root 'static_pages#home'


  get 'users/show', to: 'users#show'
  get 'users/update', to: 'users#update'
  get 'users/edit', to: 'users#edit'
  get 'users/delete', to: 'users#destroy'
  get 'signup', to: 'users#new'

  #get 'users/new' to: 'user#show'
  #get 'users/create' to: 'user#show'
  
  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
