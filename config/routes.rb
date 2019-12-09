Rails.application.routes.draw do
  resources :games_problems
  
  resources :games, only: [:index, :create, :show]
  resources :problems

  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
