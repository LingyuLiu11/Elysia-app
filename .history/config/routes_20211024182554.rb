Rails.application.routes.draw do
  
  get  'static_pages/home'
  get  'static_pages/help'
  # devise_for :users
  root 'application#hello'
  root 'customer/home#index'
  # root 'users#users'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
