IkonBlvd::Application.routes.draw do
  match "beta_signup" =>  "home#beta_signup"
  
  #temp index page hack
  match "silverline" => "home#index"
  
  #devise
  match '/auth/:provider/callback' => 'authentications#create'
  match '/auth/failure' => "home#index"
  
  devise_for :users

  resources :user_profiles
  resources :authentications
  
  resources :user_assets, :only => :new do
    collection do
      post 'upload'
    end
  end
  
  root :to => 'home#landing'
end
