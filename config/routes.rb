Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :stuffed_animals, only: [:index, :show, :new, :create] do
    resources :reservations, only: [:create]
  end

  resources :reservations, only: [] do
    member do
      patch :accept
      patch :decline
    end
  end
  resource :dashboard, only: [:show]
end
