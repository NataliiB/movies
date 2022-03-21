Rails.application.routes.draw do
  get '/categories', to: 'categories#index'
  root 'categories#index'
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
