# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Doctors.destroy_all
Cities.destroy_all
Appointments.destroy_all
Patients.destroy_all
Specialities.destroy_all
JoinTableDoctorSpeciality.destroy_all

20.times do |index|
  doctor = Doctor.create(
  	first_name: Faker::Name.first_name,
  	last_name: Faker::Name.last_name,
  	zip_code: Faker::Address.zip_code
  	)
  patient = Patient.create(
  	first_name: Faker::Name.first_name,
  	last_name: Faker::Name.last_name
  	)
  appointment = Appointment.create(
  	date: Faker::Date.forward(30)
  	)
  speciality = Speciality.create(
  	name: ["Anesthesiology", "Dermatology", "Emergency medicine", "Medical genetics", "Allergy & immunology", "Radiology", "Neurology"].sample
  	)
end