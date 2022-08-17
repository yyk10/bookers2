class BooksController < ApplicationController
  def new
     @book = Book.new
  end

 def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    book = Book.new(book_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    book.save
    # 4. トップ画面へリダイレクト
    redirect_to 'book_path'
  end
  
  def index
    @books = Book.page(params[:id])
   

  end

  def show
  end
  
  def edit
  end
  
  
  private

  def book_params
    params.require(:book).permit(:book_name, :image, :caption)
  end
end
