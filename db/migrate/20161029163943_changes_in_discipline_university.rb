class ChangesInDisciplineUniversity < ActiveRecord::Migration[5.0]
  def change
  	remove_index :subdisciplines, :column => :discipline_id
  	remove_column :subdisciplines, :column => :discipline_id
  	add_column :subdisciplines, :description, :text
  	add_column :discipline_universities, :subdiscipline_id, :integer, :null => :false
  	add_column :discipline_universities, :degree_id, :integer, :null => :false
  end
end
