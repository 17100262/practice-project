class CreateDegreeprograms < ActiveRecord::Migration[5.0]
  def change
    create_table :degreeprograms do |t|
      t.string :type
      t.string :name
      t.integer :subdiscipline_id

      t.timestamps
    end
    remove_column :discipline_universities, :column => :subdiscipline_id
    remove_column :discipline_universities, :column => :degree_id
  end
end
