class BooksController < ApplicationController
  def index
    @books = Book.where(:checked_out => false)
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(params[:book])
    redirect_to @book
  end
end
