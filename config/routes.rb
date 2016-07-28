Rails.application.routes.draw do


  devise_for :members

  resources :members, excpet: [:destroy]

  get '/about' , to: "pages#about"
  resources :games, only: [:index,:show]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root "home#index"
end
