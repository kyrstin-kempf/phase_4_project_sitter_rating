class RatingSerializer < ActiveModel::Serializer
  attributes :id, :rating, :sitter_id

  belongs_to :sitter
  belongs_to :client
end
