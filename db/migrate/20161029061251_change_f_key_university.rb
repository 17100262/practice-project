class ChangeFKeyUniversity < ActiveRecord::Migration[5.0]
  def change
  	remove_foreign_key :university, column: :CityId
  	add_foreign_key :university, :city_id
  end
end
