class UserProfilesController < ApplicationController
  def show
    unless current_user
      redirect_to home_index_path
    end
  end

end
