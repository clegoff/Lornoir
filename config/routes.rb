Rails.application.routes.draw do
  get 'accts/login'
  get 'posts/index'

  resources :posts
  resources :accts
end
