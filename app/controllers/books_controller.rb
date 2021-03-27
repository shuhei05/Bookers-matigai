class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = book.new
  end

  def create
    book= book.new(book_params)
    book.save
    redirect_to book_path(book.id)
  end

  def show
    @book = book.find(book_params[:id])
  end

  def edit
  end
end

 private
 def book_params
   params.require(:book).parmit(:title, :body)
 end
