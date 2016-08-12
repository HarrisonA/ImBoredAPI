Rails.application.routes.draw do
  resources :families
  resources :sports
  resources :bars
  resources :parks
  resources :restaurants
  resources :movies
  resources :travels
  resources :cities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
