class Api::V1::ReviewsController < ApplicationController
    before_action :set_book

    def create
        @review = @book.reviews.new(review_params)
        if @review.save
            @book.include_in_average_rating(@review)
            render json: @book
        elsif
            @review.comments?
            render json: {error: "Please check your rating is between 1 and 10"}
        else 
            render json: {error: "Please add you comments"}
        end 
    end

    def destroy
        @review = Review.find(params["id"])
        @book = Book.find(@review.book_id)
        @book.exclude_from_average_rating(@review)
        @review.destroy
        render json: @book
    end

    private
    
    def set_book   
        @book = Book.find (params[:book_id])
    end


    def review_params
        params.require(:review).permit(:rating, :book_id, :comments)
    end
end
