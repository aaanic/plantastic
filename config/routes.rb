Rails.application.routes.draw do
  root 'pages#landing_page'

  devise_for :users
end
