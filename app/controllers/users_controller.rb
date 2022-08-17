class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find(params[:id])
    @book = @user.books.page(params[:page])
  end


  def index
  end
  
  private

  def book_params
    params.require(:user).permit(:book_name, :image, :caption)
  end
end
