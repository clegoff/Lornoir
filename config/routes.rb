Rails.application.routes.draw do
  get 'accts/index'
  get 'posts/index'

  resources :posts
  resources :accts
end
