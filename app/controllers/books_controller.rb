class BooksController < ApplicationController
    
 def show
   @book = Book.new
 end
 
 def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
  @book = Book.new(book_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
  @book.user_id = current_user.id
  @book.save
  redirect_to book_path
    # 4. トップ画面へリダイレクト
 end
 
 def index
    #@book = Book.new(book_params[:id])
    #@user = User.find(params[:id])
    #@book = @user.books
    @book = Book.new
    @books = Book.all
    #@book = User.find(params[:id])
    #@books = @user.name
    
    @user = @books
 end
 

 def edit
  @book = Book.find(params[:id])
 end
 
 def destroy
   @book = Book.find(params[:id])
   @book.destroy
   redirect_to 'show_book_path'
 end

def update
    @book = Book.find(params[:id])
    @book.update
    redirect_to 'show_book_path'
  end

 private

 def book_params
  params.require(:book).permit(:bookname, :caption)
 end
end
