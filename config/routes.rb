Antientropy::Application.routes.draw do
  root :to => 'home#index'

  resources :users, :admins do
    collection do
      get :login_from_http_basic
    end
    member do
      get :activate
    end
  end

  namespace :admin do
    resources :quests
  end

  resources :password_resets

# user session control
  match 'login' => 'sessions#create', :as => :login
  match 'logout' => 'sessions#destroy', :as => :logout
  match 'register' => 'users#create', :as => :register

  
  match 'admin' => 'admin#index', :as => :admin


  
  resource :oauth do
    get :callback
  end
  match "oauth/:provider" => "oauths#oauth", :as => :auth_at_provider
end
