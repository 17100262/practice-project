class UniversityDegree < ApplicationRecord
	validates_uniqueness_of :university_id, scope: [:degree_id]
	has_one :university
	has_one :degreeprogram
end
