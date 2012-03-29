class HomeController < ApplicationController
  def index
    redirect_to user_profile_path(current_user.user_profile) if current_user
  end
  
  def landing
    #when removing landing page, remove both home/landing.html.erb and layout/landing.html.erb
    render :layout => 'landing'
  end
  
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