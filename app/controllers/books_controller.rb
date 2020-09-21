class BooksController < ApplicationController

    def index
        @books = Book.all
    end

    def show
        @book = Book.find(params[:id])
    end

    def new
        @book = Book.new
    end

    def create
        byebug
        @book = Book.create(book_params(:title, :author, :genre, :description))
        @book.add_to_reading_list(params[:book][:reading_list_ids])
        redirect_to book_path(@book)
    end

    private

    def book_params(*args)
        params.require(:book).permit(*args)
    end


end
