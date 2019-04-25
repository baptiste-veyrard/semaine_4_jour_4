# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dog.destroy_all
DogSitter.destroy_all
Stroll.destroy_all
City.destroy_all

10.times do
	City.create(city_name: Faker::Address.city)
end

10.times do 
	DogSitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
end

10.times do 
	Dog.create(name: Faker::Name.name, city: City.all.sample)
end

10.times do 
	Stroll.create(DogSitter: DogSitter.all.sample, Dog: Dog.all.sample)
end