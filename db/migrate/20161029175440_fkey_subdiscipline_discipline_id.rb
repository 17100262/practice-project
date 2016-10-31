class FkeySubdisciplineDisciplineId < ActiveRecord::Migration[5.0]
  def change
  	  	add_foreign_key :subdisciplines, :discipline_id
  	  	add_foreign_key :degreeprograms, :discipline_id
  	  	add_foreign_key :degreeprograms, :subdiscipline_id

  end
end
