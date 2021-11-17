class Traveler < ApplicationRecord

    has_secure_password

    validates :username, presence: true
    validates :username, uniqueness: true

    has_many :trips
    has_many :locations, through: :trips

    def trip_pluralizer
        trip_count = self.trips.count
        "#{trip_count} #{'trip'.pluralize(trip_count)}."
    end

end
