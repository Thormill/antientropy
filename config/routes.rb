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
    resources :users
    resources :quest_types
    resources :greetings
  end

  resources :password_resets

# user session control
  match 'login' => 'sessions#create', :as => :login
  match 'logout' => 'sessions#destroy', :as => :logout
  match 'register' => 'users#create', :as => :register
  match ':id/activate' => 'users#activate'

# administrator control
  match 'admin' => 'admin#index', :as => :admin

  match 'admin/new_quest' => 'admin/quests#new', as: :new_quest
  match 'admin/index' => 'admin/quests#index', as: :show_quests

  match 'admin/users' => 'admin/users#index', as: :admin_users
  match 'admin/new_user' => 'admin/users#new', as: :admin_new_user
  match 'admin/show_users' => 'admin/users#list', as: :admin_show_users
  match 'admin/:id/activate_user' => 'admin/users#activate', as: :admin_user_activate
  match 'admin/:id/delete_user' => 'admin/users#delete', as: :admin_user_delete

  match 'admin/:id/delete_quest_type' => 'admin/quest_types#delete', as: :delete_admin_quest_type

  resource :oauth do
    get :callback
  end
  match "oauth/:provider" => "oauths#oauth", :as => :auth_at_provider
end
