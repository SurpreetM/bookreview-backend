class Review < ApplicationRecord
    belongs_to :book
   
    validates :comments, presence: true
    validates_inclusion_of :rating, :in => 1..10 
end
