# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Doctor.destroy_all
Appointment.destroy_all
Patient.destroy_all
City.destroy_all
Specialty.destroy_all
JoinTableDoctorSpecialty.destroy_all
City.destroy_all

 20.times do |index|
 	City.create(name: Faker::Address.city)
 end

20.times do |index|
  Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city: City.all.sample)
end

20.times do |index|
  Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
end

20.times do |index|
  Appointment.create(date: Faker::Date.forward(30), doctor: Doctor.all.sample, patient: Patient.all.sample, city: City.all.sample)
 end

20.times do |index|
  Specialty.create(name: ["Anesthesiology", "Dermatology", "Emergency medicine", "Medical genetics", "Allergy & immunology", "Radiology", "Neurology"].sample)
end

20.times do |index|
	JoinTableDoctorSpecialty.create(doctor: Doctor.all.sample, specialty: Specialty.all.sample)
end



