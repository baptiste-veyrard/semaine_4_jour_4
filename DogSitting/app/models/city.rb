class City < ApplicationRecord
	has_many :DogSitters
	has_many :Dogs
end
