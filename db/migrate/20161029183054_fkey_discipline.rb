class FkeyDiscipline < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :discipline, :id

  end
end
