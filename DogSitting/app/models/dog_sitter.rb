class DogSitter < ApplicationRecord
	has_many :Strolls
	has_many :Dogs, through: :Strolls
	belongs_to :city
end
