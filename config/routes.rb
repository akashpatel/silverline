IkonBlvd::Application.routes.draw do
  #landing page routes
  match "beta_signup" =>  "home#beta_signup"
  match "health_check" => "home#health_check"
  
  match "silverline" => "home#login"
  match "index" => "home#index"
  match "landing" => "home#landing"
  
  #devise
  match '/auth/:provider/callback' => 'authentications#create'
  match '/auth/failure' => "home#login"

  #tagged quotes routes
  match '/t/:tag_name/' => 'tagged_quotes#index',             :as => :tagged_quotes
  match 't/:tag_name/q/:quote_id' => 'tagged_quotes#show',    :as => :tagged_quote
  match 't/:tag_name/q/next' => 'tagged_quotes#next',         :as => :next_tagged_quote
  match 't/:tag_name/q/previous' => 'tagged_quotes#previous', :as => :previous_tagged_quote
  
  devise_for :users

  resources :user_profiles
  resources :authentications
  resources :user_dreams, :only => :create
  resources :quotes, :only => [:create, :show], :path => "q" do
    member do
      get 'previous'
      get 'next'
    end
  end
  resources :authors, :except => [:destroy]

  resources :user_assets, :only => :new do
    collection do
      post 'upload'
    end
  end
  
  root :to => 'home#index'
end
