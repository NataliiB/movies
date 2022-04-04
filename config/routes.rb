Rails.application.routes.draw do
  resources :categories do
    resource :films
    get 'films_collection', to: 'films#films_by_category'
  end

  root 'categories#index'
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end