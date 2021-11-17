# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Country.create(name: 'France')
Country.create(name: 'Germany')
Country.create(name: 'United States')
Country.create(name: 'Japan')
Country.create(name: 'Mexico')

Location.create(city: 'Nantes', country_id: 1)
Location.create(city: 'Paris', country_id: 1)
Location.create(city: 'Berlin', country_id: 2)
Location.create(city: 'New York', country_id: 3)
Location.create(city: 'Tokyo', country_id: 4)
Location.create(city: 'Tijuana', country_id: 5)
