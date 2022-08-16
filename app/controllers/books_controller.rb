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

  end

  def show
  end
end
