Rails.application.routes.draw do
  root "home#index"

  get "admin/", to: "admin#index", as: "admin"

  get "admin/cinemas/", to: "admin#cinema_index", as: "cinemas"
  get "admin/cinemas/new/", to: "admin#new_cinema", as: "new_cinema"
  get "admin/cinemas/:id/", to: "admin#show_cinema", as: "cinema"
  post "admin/cinemas/", to: "admin#create_cinema"
  get "admin/cinemas/:id/edit/", to: "admin#edit_cinema", as: "edit_cinema"
  patch "admin/cinemas/:id/", to: "admin#update_cinema"
  delete "admin/cinemas/:id/", to: "admin#destroy_cinema"

  get "admin/movies/", to: "admin#movie_index", as: "movies"
  get "admin/movies/new/", to: "admin#new_movie", as: "new_movie"
  get "admin/movies/:id/", to: "admin#show_movie", as: "movie"
  post "admin/movies/", to: "admin#create_movie"
  get "admin/movies/:id/edit/", to: "admin#edit_movie", as: "edit_movie"
  patch "admin/movies/:id/", to: "admin#update_movie"
  delete "admin/movies/:id/", to: "admin#destroy_movie"
  
  

  get "register/", to: "users#new"
  
  get "login/", to: "sessions#new"
  post "login/", to: "sessions#create"
  get "logout/", to: "sessions#destroy"

  resources :users, except: [:new]
end
