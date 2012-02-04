class HomeController < ApplicationController
  
  def beta_signup
    email = params['beta_signup_input']
    bs = BetaSignup.new(:email => email)
    if (bs.save)
      render :nothing => true
    else
      render :json => 'Email Signup Failed.', :status => 500
    end
  end
  
end