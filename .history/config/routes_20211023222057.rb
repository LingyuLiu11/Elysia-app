Rails.application.routes.draw do
  Rails.application.routes.draw do
    root 'static_pages#home'
    get  '/help',    to: 'static_pages#help'
    get  '/about',   to: 'static_pages#about'
    get  '/contact', to: 'static_pages#contact'
  end
  # devise_for :users
  # root 'customer/home#home'
  # root 'users#users'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
