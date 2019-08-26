Rails.application.routes.draw do

  root 'pages#landing_page'

  get 'user_dashboard', to: 'pages#user_dashboard'
  get 'browse', to: 'pages#results_page'

  resources :plants, only: [:index, :show]

  resources :environment_plants

  resources :reminders

  devise_for :users
end
