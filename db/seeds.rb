require 'faker'

Booking.destroy_all
Yacht.destroy_all
User.destroy_all

coustau = User.create!(email: "yacht@yacht.com", password: "yachtyacht", username: 'Comandant Coustau')
# elon_musk = User.create!(email: "yacht@yacht.com", password: "yachtyacht", username: 'Elon Musk')
# jeff_bezos = User.create!(email: "yacht@yacht.com", password: "yachtyacht", username: 'Jeff Bezos')

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
  name: "Hermione",
  address: "Port Vauban, Antibes",
  price: 25000,
  description: "I first met her on a holiday to an exotic country. The moons delicate light had just turned the world a-flame with silver when I saw her. She had a comely figure which was stem-thin. Her curvilinear waist didn’t surprise me as much as the saffron tint to her complexion.",
  user: coustau,
  stars: 5,
  voyager: 8
)

puts "db well created"
