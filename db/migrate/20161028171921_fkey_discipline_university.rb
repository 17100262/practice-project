class FkeyDisciplineUniversity < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :discipline_univeristy, :university_id
  	add_foreign_key :discipline_univeristy, :discipline_id
  end
end
