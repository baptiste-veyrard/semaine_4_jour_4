class Dog < ApplicationRecord
	has_many :Strolls
	has_many :DogSitters, through: :Strolls
	belongs_to :city
end
