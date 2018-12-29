Rails.application.routes.draw do

  get '/user/:id/ingredients', to: 'user_ingredient#index', as: 'user_ingredients'
  resources :user_ingredients
  resources :ingredients
  resources :recipes
  resources :users
end
