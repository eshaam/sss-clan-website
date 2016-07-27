Rails.application.routes.draw do

  get '/about' , to: "pages#about"
  resources :games, only: [:index,:show]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"
end
