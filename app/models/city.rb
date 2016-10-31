class City < ApplicationRecord
	validates :name, :uniqueness => {:message => 'already taken'}
	has_many :university
end
