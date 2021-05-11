class Book < ApplicationRecord
    has_many :reviews
    validates :title, :author, :genre, presence: true
    
end
