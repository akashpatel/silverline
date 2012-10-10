class QuotesController < ApplicationController
  
  def create
    q = Quote.new(params[:quote])
    q.user_profile_id = current_user.user_profile.id
    q.save

    redirect_to user_profile_path(current_user.user_profile)
  end
  
  def show
    @quote = Quote.find(params[:id])
  end

  def previous
    current_quote = Quote.find(params[:id])
    prev_quote = Quote.previous(current_quote).first

    #app has reached the first quote and no more previous quotes exist, so display the last one
    if prev_quote.nil?
      prev_quote = Quote.last
    end
    redirect_to quote_path(prev_quote)
  end

  def next
    current_quote = Quote.find(params[:id])
    next_quote = Quote.next(current_quote).first

    #app has reached the last quote and no more next quotes exist, so display the first qutoe
    if next_quote.nil?
      next_quote = Quote.first
    end
    redirect_to quote_path(next_quote)
  end
end
