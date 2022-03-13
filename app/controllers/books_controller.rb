class BooksController < ApplicationController
  def top
  end
  def new
    @book = Book.new
  end

  def index
    @book = Book.all
  end
  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
  end
  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
    redirect_to edit_book_path(book.id)
  end
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end
  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
