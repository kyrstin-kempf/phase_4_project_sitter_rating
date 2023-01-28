class Client < ApplicationRecord
    validates :name, presence: true, :number_of_children, presence: true
end
