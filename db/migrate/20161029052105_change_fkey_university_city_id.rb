class ChangeFkeyUniversityCityId < ActiveRecord::Migration[5.0]
  def change
  	remove_foreign_key :universities, column: :CityId
  	add_foreign_key :universities, :city_id
  end
end
