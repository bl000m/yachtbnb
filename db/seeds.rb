require 'faker'

Yacht.destroy_all
Booking.destroy_all
User.destroy_all

user = User.create!(email: "yacht@yacht.com", password: "yachtyacht")

100.times do
  yacht = Yacht.create!(
    name: Faker::BossaNova.song,
    address: Faker::Address.state,
    price: Faker::Number.between(from: 10_000, to: 50_000),
    description: Faker::Movie.quote,
    user_id: user.id
  )
end
