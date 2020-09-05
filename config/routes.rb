Rails.application.routes.draw do
  get 'home/about'
  get 'search' => 'search#search'

  root 'home#top'

  devise_for :users

  resources :users,only: [:show,:index,:edit,:update]
  resources :books

end