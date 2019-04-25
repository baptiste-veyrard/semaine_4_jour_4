class JoinTableDoctorSpeciality < ApplicationRecord
	belong_to :doctor
	belong_to :speciality
end
