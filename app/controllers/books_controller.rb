class BooksController < ApplicationController
 

 def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
  @book = Book.new(book_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
  @book.user_id = current_user.id
  @book.save
  redirect_to books_path
    # 4. トップ画面へリダイレクト
 end
  
 def index
    @user = @book.post_images
    @books = @user.name
    @book = Book.new(book_params)
    @books = Book.all
    user = @books
    
 end

 def show
 end
  
 def edit
 end
  
  
 private

 def book_params
  params.permit(:book_name, :image, :caption)
 end
end
 