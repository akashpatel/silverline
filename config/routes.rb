IkonBlvd::Application.routes.draw do
  match "beta_signup" =>  "home#beta_signup"
  
  #temp index page hack
  match "flaunt" => "home#index"
  
  #devise
  match '/auth/:provider/callback' => 'authentications#create'
  match '/auth/failure' => "home#index"
  
  devise_for :users

  resources :user_profiles
  resources :authentications
  resources :rewards
  match '/reward_by_qrcode/:id' => 'rewards#get_reward_by_qrcode'
  
  root :to => 'home#landing'
end
