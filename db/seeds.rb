# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.destroy_all

amazon = Customer.create(company: 'Amazon', address:'601 New Jersey Ave NW #900', city:'Washington', state: 'DC', zip:'20001' )

google = Customer.create(company: 'Google', address:' 25 Massachusetts Ave NW #900', city:'Washington', state: 'DC', zip:'20001' )

    