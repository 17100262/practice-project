class RemoveColumnDegreeIdUniversityDegree < ActiveRecord::Migration[5.0]
  def change
  	remove_column :university_degrees, :column => :degree_id
  end
end
