class FkeyCityIdUniversityCorrection < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :university, :CityId
  end
end
