class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @books = @user.books
  end


  def index
   @users = User.all
   @book = Book.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update
    redirect_to user_path
  end


  private

  def book_params
    params.require(:user).permit(:bookname, :image, :caption)
  end
end
