Rails.application.routes.draw do
  resources :physical_conditions
  devise_for :users
  root to: "articles#index"

  resources :route_statuses
  resources :items
  resources :weather_types
  resources :object_categories
  resources :object_importances
  resources :seasons
  resources :routes
  resources :complexities
  resources :settlements
  resources :settlement_types
  resources :chains
  resources :create_settlements
  resources :food_types
  resources :foods
  resources :food_categories
  resources :producers
  resources :article_categories
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
