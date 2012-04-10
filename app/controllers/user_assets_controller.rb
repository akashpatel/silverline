class UserAssetsController < ApplicationController
  
  def upload
    asset = UserAsset.new(params[:asset])
    asset.user_profile_id = current_user.user_profile.id
    asset.save
    
    redirect_to user_profile_path(current_user.user_profile)
    
  end
  
end