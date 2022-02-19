Rails.application.routes.draw do
  resources :neighborhoods
  resources :favorites
  resources :users
  resources :cuisines
  resources :dishes
  resources :venues
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
