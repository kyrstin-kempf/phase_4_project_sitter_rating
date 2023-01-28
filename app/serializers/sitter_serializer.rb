class SitterSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :years_of_experience, :hourly_rate

  has_many :ratings
end
