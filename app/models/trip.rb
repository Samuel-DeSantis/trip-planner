class Trip < ApplicationRecord

    belongs_to :traveler
    belongs_to :location

    validates :traveler_id, presence: true
    validates :location_id, presence: true
  
end
