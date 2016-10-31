class RemoveColumnDegreeIdUniversityDegree2 < ActiveRecord::Migration[5.0]
  def change
  	drop_table :university_degrees  
  end
end
