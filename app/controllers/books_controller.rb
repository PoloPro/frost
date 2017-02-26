class BooksController < ApplicationController
  def index
    @books_todo    = Book.where({ status: 'todo' })
    @books_up_next = Book.where({ status: 'up-next' })
    @books_done    = Book.where({ status: 'done' })

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def create
    @book = Book.new(book_params.merge(status: 'todo'))
    @book.save
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :month_finished, :status)
  end
end