class Sitter < ApplicationRecord
    validates :name, presence: true, :years_of_experience, presence: true, length: { maximum: 65 }, :hourly_rate, presence: true, length: { maximum: 100 }
end
