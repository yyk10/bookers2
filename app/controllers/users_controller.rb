class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end


  def index
   @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(@user.id)
      redirect_to user_path(@user.id), notice: 'success'
    else
      render :edit
    end
    #@user.update
    #redirect_to user_path
  end


  private

  def user_params
    params.require(:user).permit(:name, :image, :introduction)
  end
end
