class UsersController < ApplicationController
  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
     @user = User.find(params[:id])
     if @user == current_user
       render "edit"
     else
       redirect_to user_path(current_user.id)
     end
  end

  def index
    @book = Book.new
    @users = User.all
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to user_path, notice:'You have updated user successfully.'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end


end
