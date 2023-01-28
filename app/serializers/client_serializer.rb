class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :number_of_children

  has_many :sitters, through: :ratings
end
