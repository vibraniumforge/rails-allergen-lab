Rails.application.routes.draw do
  resources :recipes
  resources :ingredients
  resources :users
  get '/sorted', to: 'recipes#sorted', as: 'sorted_recipe'
  # resources :ingredients, only: [:index, :show]
  # resources :users, only: [:show, :destroy, :new, :create]
  # resources :recipes, only: [:index, :new, :create]
end
