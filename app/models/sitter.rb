class Sitter < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :years_of_experience, presence: true, length: { maximum: 65 } 
    validates :hourly_rate, presence: true, length: { maximum: 100 }

    has_many :ratings
    has_many :clients, through: :ratings
end
