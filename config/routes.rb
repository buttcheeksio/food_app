Rails.application.routes.draw do

  resources :recipe_ingredients
  get '/user/:id/ingredients', to: 'user_ingredient#index', as: 'user_ingredients'
  resources :user_ingredients
  resources :ingredients
  resources :recipes
  resources :users
end
