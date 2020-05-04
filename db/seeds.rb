# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
TagGossipLink.destroy_all
Comment.destroy_all


#Créer Cities
10.times do
  city = City.create!(name: Faker::Address.city, zip_code: rand(70000..75000))
end

#créer Users
10.times do
  user = User.create!(first_name: Faker::Name.first_name, 
  last_name: Faker::Name.last_name,
  description: Faker::Quote.matz,
  email: Faker::Internet.email,
  age: rand(18..77),
  city: City.find(rand(City.first.id..City.last.id)))
end

#créer Gossips
20.times do
  gossip = Gossip.create!(title: Faker::Book.title,
  content: Faker::ChuckNorris.fact,
  user: User.find(rand(User.first.id..User.last.id)))
end

#créer Tags
10.times do
  tag = Tag.create!(title: Faker::Sports::Football.team)
end

# Lier un tag avec un gossip
Gossip.all.each do |gossip|
  TagGossipLink.create(gossip: gossip, tag: Tag.find(rand(Tag.first.id..Tag.last.id)))
end

rand(0..20).times do
  TagGossipLink.create(
    gossip: Gossip.find(rand(Gossip.first.id..Gossip.last.id)),
    tag: Tag.find(rand(Tag.first.id..Tag.last.id)))
end

#reste à faire le seed pour le privatemessage

#créer commentaires
20.times do
  Comment.create(content: Faker::ChuckNorris.fact,
    user: User.find(rand(User.first.id..User.last.id)),
    gossip: Gossip.find(rand(Gossip.first.id..Gossip.last.id)))
end

#créer des likes
20.times do
  Like.create(user: User.find(rand(User.first.id..User.last.id)),
  gossip: Gossip.find(rand(Gossip.first.id..Gossip.last.id)))
end

