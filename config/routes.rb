Rails.application.routes.draw do
    devise_for :users, controllers: {
        sessions: 'users/sessions'
    }
    root 'posts#index'

    get 'posts/index'
    get 'home' => 'posts#index'
    get 'about' => 'layouts#about'
    get 'login' => 'accts#login'
    get 'register' => 'layouts#register'
    get 'pannier' => 'layouts#pannier'
    get 'gemmes' => 'layouts#gemmes'
    get 'pierres' => 'layouts#pierres'

    resources :posts
end
