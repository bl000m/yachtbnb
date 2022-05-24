require 'faker'

Yacht.destroy_all
Booking.destroy_all
User.destroy_all

user = User.create!(email: "yacht@yacht.com", password: "yachtyacht", username: 'Comandant Coustau')

100.times do
  Yacht.create!(
    name: Faker::BossaNova.song,
    address: Faker::Address.state,
    price: Faker::Number.between(from: 10_000, to: 50_000),
    description: Faker::Movie.quote,
    user: user
  )
end
