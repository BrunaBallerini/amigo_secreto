Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/") controller#action
  root "home#index", as: 'home'
  get '/about', to: 'home#about', as: 'about'
  get '/cars', to: 'home#cars', as: 'cars'
  get '/cars/:id', to: 'home#show', as: 'cars_show'
end
