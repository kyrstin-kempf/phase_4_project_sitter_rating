class Rating < ApplicationRecord
    validates :rating, presence: true, length: { in: 0..5 }
end
