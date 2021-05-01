class BooksController < ApplicationController
  def create
    book=Book.new
    book.save
    redirect_to books_path
  end

  def index
    @book=Book.new
  end

  def show
  end

  def edit
  end
end
