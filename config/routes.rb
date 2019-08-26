Rails.application.routes.draw do
  resources :games_problems
  resources :games
  resources :problems
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
