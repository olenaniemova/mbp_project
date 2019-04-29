Rails.application.routes.draw do
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
