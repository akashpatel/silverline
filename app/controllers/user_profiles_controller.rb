class UserProfilesController < ApplicationController
  def show
    @user_assets = current_user.user_profile.user_assets
    @user_dreams = current_user.user_profile.user_dreams
  end

end
