Rails.application.routes.draw do
    devise_for :users, controllers: {
        sessions: 'users/sessions'
    }
    root 'posts#index'

    get 'posts/index'

    resources :posts, :accts
end
