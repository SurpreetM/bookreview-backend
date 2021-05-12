class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :author, :genre, :average_rating
  has_many :reviews
end
