class BooksController < ApplicationController
    
 def show
   @book = Book.find(params[:id])
 end
# end
 def new
   @book = Book.new
 end
 
 def create
    @book = Book.new(book_params)
# newページで入力した内容が格納された状態のインスタンスが飛んでくる
    @book.user_id = current_user.id
# user_idカラムにcurrent_userのidを代入する
   if @book.save
       flash[:notice] = "Book was successfully created"
       redirect_to book_path(@book.id)
   else
      @books = Book.all
      render :index
    end
 end
 
 
 
 def index
    #@book = Book.new(book_params[:id])
    #@user = User.find(users_path)
    #@user = Book.find(params[:id])
    @book = Book.new
    @books = Book.all
    #@books = @user.name
 end
 
 

 def edit
  @book = Book.find(params[:id])
 end
 
 def destroy
   @book = Book.find(params[:id])
   @book.destroy
   redirect_to 'books_path'
 end

def update
    @book = Book.find(params[:id])
    @book.update
    redirect_to 'user_path'
end

 private

 def book_params
  params.require(:book).permit(:title, :body)
 end
end
