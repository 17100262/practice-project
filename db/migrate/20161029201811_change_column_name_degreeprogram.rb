class ChangeColumnNameDegreeprogram < ActiveRecord::Migration[5.0]
  def change
  	rename_column :degreeprograms, :degree_type, :degree_type
  	add_foreign_key :university_degrees, :university_id
  	add_foreign_key :university_degrees, :degree_id
  end
end
