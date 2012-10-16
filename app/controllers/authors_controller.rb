class AuthorsController < ApplicationController

  def create
    author = Author.new(params[:author])
    author.save

    redirect_to new_author_path
  end

end