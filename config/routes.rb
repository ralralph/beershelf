Rails.application.routes.draw do
  root 'posts#index'

  devise_for :users,
    path: '',
    path_names: {
      sign_up: '',
      sign_in: 'login',
      sign_out: 'logout',
      registration: "signup",
    },
    controllers: {
      registrations: "users/registrations",
      sessions: "users/sessions"
    }

  resources :users, only: %i[index show]
  resources :posts
  resources :wishlists, only: %i[create update]
  resources :beers, :breweries
  resources :relationships, only: %i[create destroy]

end
