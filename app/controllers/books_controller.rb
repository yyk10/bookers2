class BooksController < ApplicationController
    
 #def show
  # @book = Book.new
# end
 def new
   @book = Book.new
 end
 
 def create
    @book = Book.new(book_params[:id])
# newページで入力した内容が格納された状態のインスタンスが飛んでくる
    @book.user_id = current_user.id
# user_idカラムにcurrent_userのidを代入する
  if @book.save
    redirect_to root_path
  else
    render 'new'
  end
    # １.&2. データを受け取り新規登録するためのインスタンス作成
  #@book = Book.new(book_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
  #@book.user_id = current_user.id
  #@book.save
  #redirect_to book_path
    # 4. トップ画面へリダイレクト
 end
 
 
 
 def index
    #@book = Book.new(book_params[:id])
    #@user = User.find(params[:id])
    #@book = @user.books
    #@book = Book.new
    @books = Book.all
    #@book = User.find(params[:id])
    #@books = @user.name
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
