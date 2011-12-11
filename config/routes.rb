Antientropy::Application.routes.draw do
  root :to => 'user_sessions#new'

  resources :users, :admins do
    collection do
      get :login_from_http_basic
    end
    member do
      get :activate
    end
  end

  resources :user_sessions
  resources :password_resets

  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout
  match 'register' => 'users#new', :as => :register
  
  resource :oauth do
    get :callback
  end
  match "oauth/:provider" => "oauths#oauth", :as => :auth_at_provider
end
