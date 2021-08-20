Rails.application.routes.draw do
  get 'topics/new'
  get 'topics/index'
  get 'chats/index'
  get 'chats/show'
  get 'mains/new'
  get 'sessions/new'
  get 'users/edit'
  get 'users/hit'
  get 'pages/index'
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    get :search, on: :collection
  end
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :topics
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  resources :chats
end
