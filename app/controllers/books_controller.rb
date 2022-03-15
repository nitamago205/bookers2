class BooksController < ApplicationController
  def new
  end

  def index
    @book = Book.new
    @books = Book.all

  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id

    if @book.save
      #TODO: @bookどこで定義している？
      redirect_to book_path(@book.id)
    else
      render :books_path
    end
  end

  def show
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
