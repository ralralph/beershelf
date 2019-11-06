Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
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
  resources :posts, except: %i[index]
  resources :beers
  resources :breweries
  resources :relationships, only: [:create, :destroy]

end
