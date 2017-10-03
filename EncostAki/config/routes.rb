Rails.application.routes.draw do
  resources :users
  get 'home/index'
  root :to => 'home#index'
  resources :locais
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
