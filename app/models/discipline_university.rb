class DisciplineUniversity < ApplicationRecord
	resourcify
	belongs_to :university
	belongs_to :discipline
	belongs_to :subdiscipline
	belongs_to :degreeprogram, foreign_key: "degreeprogram_id"

	# validates_uniqueness_of :university_id, scope: [:discipline_id]
end
