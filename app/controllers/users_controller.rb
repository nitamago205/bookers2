class UsersController < ApplicationController
  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
     @user = User.find(params[:id])
  end
  
  def index
    @book = Book.new
    @users = User.all
    @user = current_user
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id

    if @book.save
      redirect_to book_path(@book.id)
    else
      render :books_path
    end
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path, notice: 'You have updated user successfully.'  
  end


  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
  
  
end
