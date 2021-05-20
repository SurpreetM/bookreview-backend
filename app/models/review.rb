class Review < ApplicationRecord
    belongs_to :book
    validates_inclusion_of :rating, :in => 1..10
    validates :comments, presence: true
end
