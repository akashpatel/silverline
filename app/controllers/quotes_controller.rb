class QuotesController < ApplicationController
  
  def create
    q = Quote.new(params[:quote])
    q.user_profile_id = current_user.user_profile.id
    q.save

    redirect_to user_profile_path(current_user.user_profile)
  end
end