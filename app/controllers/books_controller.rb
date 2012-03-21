class BooksController < ApplicationController
  def index
    @books = Book.where(:checked_out => false)
  end

  def show
    @book = Book.find(params[:id])
  end
end
