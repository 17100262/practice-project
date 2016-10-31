class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :university_degrees, :degree_id, :degreeprogram_id
  end
end
