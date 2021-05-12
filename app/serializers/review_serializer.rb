class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :rating, :comments
end
