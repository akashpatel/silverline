IkonBlvd::Application.routes.draw do
  #landing page routes
  match "beta_signup" =>  "home#beta_signup"
  match "health_check" => "home#health_check"
  
  match "silverline" => "home#login"
  match "index" => "home#index"
  
  #devise
  match '/auth/:provider/callback' => 'authentications#create'
  match '/auth/failure' => "home#login"
  
  devise_for :users

  resources :user_profiles
  resources :authentications
  resources :user_dreams, :only => :create
  resources :quotes, :only => [:create, :show] do
    member do
      get 'previous'
      get 'next'
    end
  end
  
  resources :user_assets, :only => :new do
    collection do
      post 'upload'
    end
  end
  
  root :to => 'home#landing'
end
