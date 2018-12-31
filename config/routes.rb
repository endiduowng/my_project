Rails.application.routes.draw do
  root "rooms#index"

  devise_for :users,
    path: '',
    path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
    controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}

  resources :rooms do
    resources :comments, only: [:index, :create, :destroy], shallow: true
  end

  resources :users, only: [:show]
end
