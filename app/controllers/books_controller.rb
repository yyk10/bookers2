class BooksController < ApplicationController

 def show
   @book = Book.find(params[:id])
   @user = @book.user
 end

 def new
   @book = Book.new
 end

 def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @user = @book.user
   if @book.save
       flash[:notice] = "Book was successfully created"
       redirect_to book_path(@book.id)
   else
      @books = Book.all
      render :index
   end
 end

 def index
    @book = Book.new
    @books = Book.all
    @user = current_user
 end

 def edit
  @book = Book.find(params[:id])
 end

 def update
    @book = Book.find(params[:id])
    if @book.update (book_params)
    redirect_to book_path, notice: 'Book information updated successfully'
    else
    render :edit , status: :unprocessable_entity
    end
 end

 def destroy
   @book = Book.find(params[:id])
   @book.destroy
   redirect_to books_path
 end

 private

 def book_params
  params.require(:book).permit(:title, :body)
 end
end
