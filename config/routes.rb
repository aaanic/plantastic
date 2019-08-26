Rails.application.routes.draw do
  root 'pages#landing_page'

  resources :plants, only: [:index, :show]

  resources :user_plants

  resources :reminders

  devise_for :users
end
