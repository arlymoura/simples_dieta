Rails.application.routes.draw do
  
  get 'dashboard/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => "dietaries#index"
  resources :dashboard, only: [:index], as: 'dashboard_user'
  
  resources :dietaries 
end
