class Specialty < ApplicationRecord
	has_many :doctors, through: :JoinTableDoctorSpecialties
end
