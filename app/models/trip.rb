class Trip < ApplicationRecord

    belongs_to :traveler
    belongs_to :location

    validates :traveler_id, presence: true
    validates :location_id, presence: true
  
    def get_date
        self.date ? self.date : 'Add Date'
    end

    def get_cost
        self.cost ? '$' + self.cost.to_s : 'Add Cost'
    end

end
