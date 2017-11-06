Rails.application.routes.draw do
  resources :support_requests
  resources :areas
  resources :tickets
  resources :risk_areas
  devise_for :members
  get 'home/index'
  get 'inicio' => 'welcome#index'
  root :to => 'home#index'
  resources :locais
  resources :users
  resources :login
  
  post 'importar' => 'risk_areas#csv_import'
  post 'import_area' => 'areas#csv_import'
  post 'import_request' => 'support_requests#csv_import'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
