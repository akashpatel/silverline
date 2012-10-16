class AuthorsController < ApplicationController

  def create
    author = Author.new(params[:author])
    author.save

    redirect_to new_author_path
  end

  def update
    author = Author.find(params[:id])
    author.update_attributes(params[:author])
    redirect_to edit_author_path(author)
  end

  def edit
    @author = Author.find(params[:id])
  end

end