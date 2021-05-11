class Api::V1::BooksController < ApplicationController

    def index
        @books = Book.all
        render json: @books
    end

    def create
        @book = Book.new(book_params)
        @book.average_rating = 0
        if @book.save
            render json: @book
        else
            render json: {error: 'Error adding book'}
        end
    end

    def show
        @book = Book.find(params[:id])
        render json: @book
    end

    


    private

    def book_params
        params.require(:book).permit(:title, :author, :genre)
      end

end
