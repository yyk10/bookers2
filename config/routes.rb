Rails.application.routes.draw do
  devise_for :users
  root to:  "homes#top"
  get 'homes/about', as: 'about'

  resources :books, only: [:index, :show, :edit]
  
  resources :users, only:[:show, :index, :edit]



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
