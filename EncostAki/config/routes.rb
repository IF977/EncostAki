Rails.application.routes.draw do
  resources :membros
  get 'control_members/index'

  get 'control_users/index'

  resources :support_requests
  resources :areas
  resources :tickets
  resources :risk_areas
  devise_for :members, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :members

  get 'home/index'
  root :to => 'home#index'
  resources :comentarios
  resources :users
  resources :login
  
  resources :statistcs
  
  post 'importar' => 'risk_areas#csv_import'
  post 'import_area' => 'areas#csv_import'
  post 'import_request' => 'support_requests#csv_import'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
