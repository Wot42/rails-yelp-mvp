Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/index'
  get 'restaurants/new'
  get 'restaurants/show'
  get 'restaurants/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:index, :new, :create]
  end
end
