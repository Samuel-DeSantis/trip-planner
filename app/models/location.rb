class Location < ApplicationRecord

    default_scope {order(:city)}

    belongs_to :country
    has_many :trips
    has_many :travelers, through: :trips

    def country_name
        self.try(:country).try(:name)
    end

    def country_name=(name)
        self.country = Country.find_or_create_by(name: name)
    end

    def name
        self.city + ', ' + self.country_name
    end

end
