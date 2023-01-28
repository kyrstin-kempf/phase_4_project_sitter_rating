# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

josie = Client.create!(name: 'Josie', email: 'josiejay@gmail.com', number_of_children: 3)
andre = Client.create!(name: 'Andre', email: 'andrerocks@hotmail.com', number_of_children: 1)

kyrstin = Sitter.create!(name: 'kyrstin', email: 'kyrstin@aol.com', years_of_experience: 7, hourly_rate: 20)
jessie = Sitter.create!(name: 'jessie', email: 'jessiejones@yahoo.com', ayears_of_experience: 3, hourly_rate: 18)

Rating.create!(rating: 4.2, sitter_id: kyrstin.id, client_id: andre.id)
Rating.create!(rating: 3.8, sitter_id: jessie.id, client_id: andre.id)
Rating.create!(rating: 4.8, sitter_id: kyrstin.id, client_id: josie.id)
Rating.create!(rating: 3.2, sitter_id: jessie.id, client_id: josie.id)