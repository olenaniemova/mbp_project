Rails.application.routes.draw do
  resources :item_types
  resources :route_menus
  resources :route_items
  resources :user_available_items
  resources :user_favorite_foods
  resources :meals
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :profiles
  resources :physical_conditions
  devise_for :users
  get '/user_articles', to: 'articles#user_articles'
  get '/user_routes', to: 'routes#user_routes'
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
