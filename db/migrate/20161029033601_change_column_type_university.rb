class ChangeColumnTypeUniversity < ActiveRecord::Migration[5.0]
  def change
  	change_column_null :universities, :city_id, false
  end
end
