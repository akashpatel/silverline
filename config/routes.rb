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
  
  root :to => 'home#landing'
end
