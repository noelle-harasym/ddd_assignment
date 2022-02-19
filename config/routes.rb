Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "venues#index"
  resources :neighborhoods
  resources :favorites
  resources :users
  resources :cuisines
  resources :dishes
  resources :venues
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
