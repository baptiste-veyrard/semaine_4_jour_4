# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
City.destroy_all

10.times do
	City.create(
		name: Faker::Address.city,
		zip_code: Faker::Address.zip_code
		)
	end

10.times do 
	User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		description: Faker::Lorem.sentences(1),
		email: Faker::Internet.email,
		age: Faker::Number.between(10, 90),
		city: City.all.sample
		)
	end

20.times do
	Gossip.create(
		title: Faker::Book.title,
		content: Faker::Lorem.sentences(3),
		user: User.all.sample
		)
end

10.times do
	Tag.create(
		title: Faker::Color.color_name
		)
end

20.times do 
	JoinTableGossipTag.create(
		gossip: Gossip.all.sample,
		tag: Tag.all.sample
		)
end









