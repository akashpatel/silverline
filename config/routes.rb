IkonBlvd::Application.routes.draw do
  match "beta_signup" =>  "home#beta_signup"
  root :to => 'home#landing'
end
