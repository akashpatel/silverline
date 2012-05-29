class UserDreamsController < ApplicationController

  def create
    ud = UserDream.new(params['user_dream'])
    ud.user_profile_id = current_user.user_profile.id
    ud.save

    redirect_to user_profile_path(current_user.user_profile)
  end

end