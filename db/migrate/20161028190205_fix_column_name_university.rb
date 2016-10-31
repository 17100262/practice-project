class FixColumnNameUniversity < ActiveRecord::Migration[5.0]
  def change
	rename_column :universities, :CityId, :city_id
  end
end
