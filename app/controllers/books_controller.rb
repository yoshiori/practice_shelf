class BooksController < ApplicationController
  def index
    @books = Book.checked_in.page(params[:page])
  end

  def checked_out
    @books = Book.checked_out.page(params[:page])
    render :index
  end

  def search
    @books = Book.checked_in
    @books = @books.search(params[:query]) if params[:query].present?
    @books = @books.page(params[:page])
    render :index
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.create(params[:book])
    redirect_to @book
  end

  def update
    @book = Book.find(params[:id])
    @book.update_attributes(params[:book])
    redirect_to @book
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to :books
  end
  
  def check_out
    @book = Book.find(params[:id])
    @book.update_attribute(:checked_out, true)
    redirect_to :books
  end

  def check_in
    @book = Book.find(params[:id])
    @book.update_attribute(:checked_out, false)
    redirect_to :books
  end

end
