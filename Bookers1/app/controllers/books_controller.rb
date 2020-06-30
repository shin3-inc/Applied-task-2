class BooksController < ApplicationController

  def top

  end

  def index
  	@books = Book.all
  	@book = Book.new
  end

  def create
  	book = Book.new(book_params)
  	book.save
  	redirect_to '/books'
  end


  def show
  	@book = Book.find(params[:id])
  end

  #def new
  #end

  def edit
  end

  private


  def book_params
  	params.require(:book).permit(:title, :body)
  end


end
