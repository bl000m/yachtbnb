require 'faker'

Booking.destroy_all
Yacht.destroy_all
User.destroy_all

user = User.create!(email: "yacht@yacht.com", password: "yachtyacht", username: 'Comandant Coustau')

50.times do
  Yacht.create!(
    name: Faker::BossaNova.song,
    address: Faker::Address.state,
    price: Faker::Number.between(from: 10_000, to: 50_000),
    description: Faker::Movie.quote,
    user: user,
    stars: Faker::Number.between(from: 3, to: 5),
    voyager: Faker::Number.between(from: 2, to: 20)
  )
end

puts "db well created"
