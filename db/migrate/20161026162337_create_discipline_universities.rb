class CreateDisciplineUniversities < ActiveRecord::Migration[5.0]
  def change
    create_table :discipline_universities do |t|
      t.integer :university_id
      t.integer :discipline_id
      t.references :subdiscipline,foreign_key: true
      t.references :degreeprogram,foreign_key: true
      t.timestamps
    end
  end
end
