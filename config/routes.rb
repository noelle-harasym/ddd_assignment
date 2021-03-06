Rails.application.routes.draw do
  scope path: ApplicationResource.endpoint_namespace,
        defaults: { format: :jsonapi } do
    scope module: "api/v1", as: "api" do
      resources :neighborhoods

      resources :favorites

      resources :users

      resources :cuisines

      resources :dishes

      resources :venues
    end
    mount VandalUi::Engine, at: "/vandal"
    # your routes go here
  end
  ActiveAdmin.routes(self)
  root to: "venues#index"
  resources :neighborhoods
  resources :favorites
  resources :users
  resources :cuisines
  resources :dishes
  resources :venues
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
