class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @book = @user.book
  end


  def index
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  
  private

  def book_params
    params.require(:user).permit(:book_name, :image, :caption)
  end
end
