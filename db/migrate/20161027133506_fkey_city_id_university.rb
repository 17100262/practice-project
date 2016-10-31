class FkeyCityIdUniversity < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :city, :CityId
  end
end
