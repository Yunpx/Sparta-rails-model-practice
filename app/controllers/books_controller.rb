class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])

  end

  def create
    @authors = Author.find(params[:author_id])
    @book = @authors.books.create(book_params)
    if @book.save
       redirect_to authors_path(@author)
     else
       render 'new'
    end
  end

  def edit
   @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @book
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :description,:page_count)
  end
end
