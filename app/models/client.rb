class Client < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :number_of_children, presence: true, length: { maximum: 30 }
end
