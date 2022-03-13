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
    book = Book.all(list_params)
    book.save
    redirect_to '/show'
  end
  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  private
  # ストロングパラメータ
  def list_params
    params.require(:book).permit(:title, :body)
  end

end
