Rails.application.routes.draw do
  get 'info/index'
  
  resources :support_requests
  resources :areas
  devise_for :members, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :members

  get 'home/index'
  root :to => 'home#index'
  resources :comentarios
  
  resources :statistcs
  
  post 'importar' => 'risk_areas#csv_import'
  post 'import_area' => 'areas#csv_import'
  post 'import_request' => 'support_requests#csv_import'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
