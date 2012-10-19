class TaggedQuotesController < ApplicationController

  #filter index page quotes with selected tag
  def index
    @quotes = Quote.tagged_with(params[:tag_name]).by_date
    @tags = Tag.order("name ASC").all

    render "home/index"
  end


  def show

  end

  def next

  end

  def previous

  end


end