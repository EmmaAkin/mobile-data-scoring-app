Rails.application.routes.draw do

  devise_for :users
  devise_for :bank_users

  root to: 'pages#home'

  resources :users, only: [ :show, :edit, :update ] do
    resources :loans, only: [ :new, :create, :edit, :update, :show ]
  end
end
