Rails.application.routes.draw do
  resources :event_attendances
  resources :events, only: %i[index create new show attending ] do
    post 'attending', :users
  end
  get 'users/new'
  get 'users/create'
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#index"
  end
