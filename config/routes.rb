Rails.application.routes.draw do

  root 'posts#index'

  devise_for :users, skip: [:sessions, :registrations]

  devise_scope :user do
    get "signup", to: "devise/registrations#new", as: :new_user_registration
    post "signup", to: "devise/registrations#create", as: :user_registration

    get "login", to: "devise/sessions#new", as: :new_user_session
    post "login", to: "devise/sessions#create", as: :user_session
    delete "logout", to: "devise/sessions#destroy", as: :destroy_user_session
  end

  resources :users, only: %i[index show edit update]
  resources :posts, except: %i[index]

end
