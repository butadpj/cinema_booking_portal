Rails.application.routes.draw do
  root "home#index"

  get "register/", to: "users#new"
  
  get "login/", to: "sessions#new"
  post "login/", to: "sessions#create"
  get "logout/", to: "sessions#destroy"

  resources :users, except: [:new]
end
