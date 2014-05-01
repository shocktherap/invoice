# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create email: 'moccaify@gmail.com', password: 'kmzway87aa', password_confirmation: 'kmzway87aa', name: 'Moccaify'
user.build_company.update name: 'Moccaify Torchsphere', address: 'Marsweek Boulevard', city: 'Mars Town', province: 'Mars Subdistrict Eleven', postalcode: 144111, sector: 'Aero Space Modelling', phone_number: 976611716, owner: 'Moccaify'

