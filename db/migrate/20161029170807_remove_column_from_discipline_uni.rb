class RemoveColumnFromDisciplineUni < ActiveRecord::Migration[5.0]
  def change
  	remove_column :discipline_universities, :subdiscipline_id
  	remove_column :discipline_universities, :degree_id
  	add_column :degreeprograms, :discipline_id, :integer
  end
end
