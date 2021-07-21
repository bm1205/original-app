Rails.application.routes.draw do
  get 'chats/index'
  get 'chats/show'
  get 'mains/new'
  get 'sessions/new'
  get 'users/edit'
  get 'pages/index'
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :chats
end
