# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
    city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
    user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraphs(number: 1)[0],email: Faker::Internet.email, age:rand(18..60), city_id: city.id)
    tag = Tag.create!(title: Faker::Hacker.adjective)
end

20.times do
    gossip = Gossip.create(title: Faker::Marketing.buzzwords, content: Faker::Quote.yoda, user_id: rand(1..10))
    Tagging.create!(gossip_id: gossip.id, tag_id: rand(1..10))
    PrivateMessage.create!(content: Faker::Lorem.paragraphs(number: 1)[0])
end
