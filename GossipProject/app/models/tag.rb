class Tag < ApplicationRecord
	has_many :gossips, through: :JoinTableGossipTag
end
