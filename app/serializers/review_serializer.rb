class ReviewSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :rating, :comments, :book_id, :id
end
