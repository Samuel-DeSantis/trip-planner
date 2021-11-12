class Traveler < ApplicationRecord

    validates :name, presence: true

    has_many :trips
    has_many :locations, through: :trips

end
