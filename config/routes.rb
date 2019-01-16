Rails.application.routes.draw do
  root "rooms#index"

  devise_for :users,
    path: '',
    path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
    controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}

  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  resources :rooms, concerns: :paginatable do
    resources :likes, only: [:create, :destroy], shallow: true
    resources :comments do
      get ':id/cancel', as: 'cancel', action: 'cancel', controller: 'comments'
    end
  end

  resources :users, only: [:show]
  resources :comments

  get "search", to: "search#index"
end
