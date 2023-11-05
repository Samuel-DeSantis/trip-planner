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

    def trips_taken
        self.trips.collect { |trip| trip_taken?(trip.date) if !trip.date.nil? }.filter{ |date| date }.count
    end

    def trips_total
        if collect_trip_costs.all? { |cost| cost.nil? }
            '$0'
        else
            '$' + collect_trip_costs.filter { |cost| !cost.nil? }.reduce(:+).to_s
        end
    end

    private

    def collect_trip_costs
        self.trips.collect { |trip| trip.cost }
    end

    def date_today
        Time.zone.now.strftime('%m/%d/%Y')
    end

    def numberize(date)
        month, day, year = date.split('/')
        (year + month + day).to_i
    end

    def trip_taken?(trip_date)
        numberize(date_today) > numberize(trip_date)
    end

end
