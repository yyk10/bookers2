Rails.application.routes.draw do
  devise_for :users
  root to:  "homes#top"
  get 'homes/about', as: 'about'

  resources :books, only: [:new, :index, :show]
  resources :users, only:[:new, :show, :index]



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
