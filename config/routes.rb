Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users, :controllers => {registrations: 'users/registrations'}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#index'
end
