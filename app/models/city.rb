class City < ApplicationRecord
	resourcify
	validates :name, :uniqueness => {:message => 'already taken'}
	has_many :university
end
