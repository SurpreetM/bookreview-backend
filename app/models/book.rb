class Book < ApplicationRecord
    has_many :reviews
    validates :title, :author, :genre, presence: true
    validates :title, uniqueness: true

    def include_in_average_rating(review)
        total_rating = self.average_rating * (self.reviews.count - 1)
        self.average_rating = (total_rating + review.rating) / (self.reviews.count)
        self.save
    end 

    def exclude_from_average_rating(review)
        
        total_rating = self.average_rating * (self.reviews.count)
        self.average_rating = (total_rating - review.rating) / (self.reviews.count - 1)
        self.save
    end

    
end
