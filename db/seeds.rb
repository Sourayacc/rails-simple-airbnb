# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all

Flat.create({name: 'Joli 2 pièces', address: '30 rue de Liberté', description: 'luminosité traversante, très spacieux', price_per_night: 75, number_of_guests: 2 })
Flat.create(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
Flat.create(
  name: 'Appartment Duplex',
  address: '30 Queen street',
  description: 'Appartment 3 bedroom, 1 ensuite, open kitchen, swimming pool',
  price_per_night: 150,
  number_of_guests: 8
)

Flat.create(
  name: 'Appartment Rez de jardin',
  address: '5 allée Mozart',
  description: 'Appartment 3 bedroom, 1 ensuite, open kitchen, kiosk, salle de sport',
  price_per_night: 200,
  number_of_guests: 4
)
