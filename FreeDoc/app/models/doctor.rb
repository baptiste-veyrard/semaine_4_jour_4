class Doctor < ApplicationRecord
	has_many :appointments
	has_many :patients, through: :appointments
	belongs_to :city
	has_many :JoinTableDoctorSpeciality
	has_many :specialities, through: :JoinTableDoctorSpeciality
end
