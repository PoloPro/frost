class BooksController < ApplicationController
  def index
    @books = Book.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @books }
    end
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end

  private def book_params
    params.require(:book).permit(:title, :author, :month_finished)
  end
end