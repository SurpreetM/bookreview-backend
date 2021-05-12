class Api::V1::ReviewsController < ApplicationController
    before_action :set_book

    # Not sure if we need the index route for reviews. 
    # Index controller action for books lists all books  
    # Show controller action for books shows book details and associated reviews
    def index
        @reviews = @book.reviews
        render json: @reviews
    end

    def create
        @review = @book.reviews.new(review_params)
        @book.include_in_average_rating(@review)
        @review.save
        render json: @book
    end

    def destroy
        @review = Review.find(params["id"])
        @book = Book.find(@review.account_id)
        @book.exclude_from_average_rating(@review)
        @review.destroy
    end

    private
    
    def set_book
        @book = Book.find(params[:book_id])
    end


    def review_params
        params.require(:review).permit(:rating, :book_id, :comments)
    end
end
