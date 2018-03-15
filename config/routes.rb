Rails.application.routes.draw do

  # root 'static_pages#home'
  scope "(:locale)", locale: /en|nh/ do
    get '/delete/:id', to: 'admin#block', as: 'delete'
    get '/admin', to: 'admin#index'
    root 'static_pages#home'
    # get 'index',to: 'static_pages#home'
    get '/signup', to: 'users#new'
    post '/signup', to: 'users#create' # named routes
    get '/login', to: 'sessions#new' ,as: "login"
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    get '/index', to: 'users#index'
    get '/notification/:id/link_through', to: 'notifications#link_through',
        as: :link_through
    get '/notifications', to: 'notifications#index'
    resources :users do
      member do
        get :following, :followers
      end
    end
    get 'auth/:provider/callback', to: 'sessions#creategoogle',via: :get
    get '/auth/google_oauth2/callback', to: 'sessions#creategoogle'
    resources :comments, only: [:create, :destroy]
    resources :likes, only: [:create, :destroy]
    resources :users
    resources :microposts, only: [:create, :destroy, :show]
    resources :relationships, only: [:create, :destroy]
  end
end