Rails.application.routes.draw do
  devise_for :users
  root 'customer/home#home'
  # root 'users#users'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end