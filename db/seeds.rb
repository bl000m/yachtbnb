require 'faker'

Booking.destroy_all
Yacht.destroy_all
User.destroy_all

coustau = User.create!(email: "yacht@yacht.com", password: "yachtyacht", username: 'Comandant Coustau')
elon_musk = User.create!(email: "yacht@gmail.com", password: "yachtyacht", username: 'Elon Musk')
jeff_bezos = User.create!(email: "yacht@yahoo.com", password: "yachtyacht", username: 'Jeff Bezos')

# 50.times do
#   Yacht.create!(
#     name: Faker::BossaNova.song,
#     address: Faker::Address.state,
#     price: Faker::Number.between(from: 10_000, to: 50_000),
#     description: Faker::Movie.quote,
#     user: user,
#     stars: Faker::Number.between(from: 3, to: 5),
#     voyager: Faker::Number.between(from: 2, to: 20)
#   )
# end

Yacht.create!(
  name: "HERMIONE",
  address: "Port Vauban, Antibes",
  price: 25000,
  description: "I first met her on a holiday to an exotic country. The moons delicate light had just turned the world a-flame with silver when I saw her. She had a comely figure which was stem-thin. Her curvilinear waist didn’t surprise me as much as the saffron tint to her complexion.",
  user: coustau,
  stars: 5,
  voyager: 8
)

Yacht.create!(
  name: "MORPHEUS",
  address: "Saint-Tropez, Var",
  price: 32000,
  description: "I first met her on a holiday to an exotic country. The moons delicate light had just turned the world a-flame with silver when I saw her. She had a comely figure which was stem-thin. Her curvilinear waist didn’t surprise me as much as the saffron tint to her complexion.",
  user: elon_musk,
  stars: 5,
  voyager: 10
)

Yacht.create!(
  name: "L'ALBATROS",
  address: "Bonifacio",
  price: 42000,
  description: "I first met her on a holiday to an exotic country. The moons delicate light had just turned the world a-flame with silver when I saw her. She had a comely figure which was stem-thin. Her curvilinear waist didn’t surprise me as much as the saffron tint to her complexion.",
  user: elon_musk,
  stars: 5,
  voyager: 10
)

Yacht.create!(
  name: "LE VAGABOND",
  address: "Marseille",
  price: 42000,
  description: "I first met her on a holiday to an exotic country. The moons delicate light had just turned the world a-flame with silver when I saw her. She had a comely figure which was stem-thin. Her curvilinear waist didn’t surprise me as much as the saffron tint to her complexion.",
  user: elon_musk,
  stars: 5,
  voyager: 10
)

Yacht.create!(
  name: "CROQUE LE VENT",
  address: "Le Havre",
  price: 1200,
  description: "I first met her on a holiday to an exotic country. The moons delicate light had just turned the world a-flame with silver when I saw her. She had a comely figure which was stem-thin. Her curvilinear waist didn’t surprise me as much as the saffron tint to her complexion.",
  user: jeff_bezos,
  stars: 5,
  voyager: 10
)

Yacht.create!(
  name: "ODE MER",
  address: "Bordeaux",
  price: 10000,
  description: "I first met her on a holiday to an exotic country. The moons delicate light had just turned the world a-flame with silver when I saw her. She had a comely figure which was stem-thin. Her curvilinear waist didn’t surprise me as much as the saffron tint to her complexion.",
  user: jeff_bezos,
  stars: 5,
  voyager: 10
)

Yacht.create!(
  name: "MOON DANCER",
  address: "Rouen",
  price: 10000,
  description: "I first met her on a holiday to an exotic country. The moons delicate light had just turned the world a-flame with silver when I saw her. She had a comely figure which was stem-thin. Her curvilinear waist didn’t surprise me as much as the saffron tint to her complexion.",
  user: jeff_bezos,
  stars: 5,
  voyager: 8
)

Yacht.create!(
  name: "MOON DANCER",
  address: "Livourne",
  price: 10000,
  description: "I first met her on a holiday to an exotic country. The moons delicate light had just turned the world a-flame with silver when I saw her. She had a comely figure which was stem-thin. Her curvilinear waist didn’t surprise me as much as the saffron tint to her complexion.",
  user: jeff_bezos,
  stars: 5,
  voyager: 8
)

Yacht.create!(
  name: "MOON DANCER",
  address: "Gênes",
  price: 10000,
  description: "I first met her on a holiday to an exotic country. The moons delicate light had just turned the world a-flame with silver when I saw her. She had a comely figure which was stem-thin. Her curvilinear waist didn’t surprise me as much as the saffron tint to her complexion.",
  user: jeff_bezos,
  stars: 5,
  voyager: 8
)

Yacht.create!(
  name: "HAWAII",
  address: "Porto Cervo",
  price: 10000,
  description: "I first met her on a holiday to an exotic country. The moons delicate light had just turned the world a-flame with silver when I saw her. She had a comely figure which was stem-thin. Her curvilinear waist didn’t surprise me as much as the saffron tint to her complexion.",
  user: jeff_bezos,
  stars: 5,
  voyager: 8
)

puts "db well created"
