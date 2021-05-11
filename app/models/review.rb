class Review < ApplicationRecord
    belongs_to :book
    validates_inclusion_of :rating, :in => 1..10
end
