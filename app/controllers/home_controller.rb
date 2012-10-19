class HomeController < ApplicationController
  def login
    redirect_to index_path if current_user
  end
  
  def index
    # @user_assets = UserAsset.find(:all)
    # @user_dreams = UserDream.find(:all)
    @quotes = Quote.by_date.all
    @tags = Tag.order("name ASC").all

  end
  
  def health_check
    render :text => 'pass'
  end
  
  
  #### Landing page related calls ####
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