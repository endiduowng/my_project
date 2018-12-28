Rails.application.routes.draw do
  devise_for :users,
    path: '',
    path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
    controllers: {registrations: 'registrations'}
  resources :rooms
  root "rooms#index"
  resources :users, only: [:show]
end
