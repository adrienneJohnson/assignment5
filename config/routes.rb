Rails.application.routes.draw do
  get 'home/show'
  get "/search", to: "home#search"
  resources :users
  resources :posts

  root "home#show"
end


