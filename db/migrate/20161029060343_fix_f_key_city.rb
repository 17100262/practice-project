class FixFKeyCity < ActiveRecord::Migration[5.0]
  def change
  	remove_foreign_key :city, column: :CityId
  end
end
