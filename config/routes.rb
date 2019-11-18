Rails.application.routes.draw do
  resources :recipes
  resources :ingredients
  resources :allergens
  resources :users
end
