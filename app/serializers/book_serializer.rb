class BookSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :title, :author, :genre, :average_rating, :id
  has_many :reviews
end
