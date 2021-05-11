class Book < ApplicationRecord
    has_many :reviews
    validates :title, :author, :genre, presence: true

    def update_average_rating(review)
        self.average_rating = (self.average_rating + review.rating) / (self.reviews.count + 1)
        self.save
    end 
    
end
