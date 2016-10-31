class FkeyUniversitydegreeDegreeId < ActiveRecord::Migration[5.0]
  def change
  	  	add_foreign_key :university_degrees, :degree_id
  end
end
