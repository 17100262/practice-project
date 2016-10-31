class RemoveForeignKeyUniversityDisciplineId < ActiveRecord::Migration[5.0]
  def change
  	remove_foreign_key :university_degrees, column: :id
  	add_foreign_key :university_degrees, :degree_id, :university_degree_id

  end
end
