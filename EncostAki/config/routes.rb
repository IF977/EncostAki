Rails.application.routes.draw do
  resources :risk_areas
  devise_for :members
  get 'home/index'
  get 'inicio' => 'welcome#index'
  root :to => 'home#index'
  resources :locais
  resources :users
  resources :login
  
  get 'importar' => "risk_areas#csv_import"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
