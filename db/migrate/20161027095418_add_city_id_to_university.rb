class AddCityIdToUniversity < ActiveRecord::Migration[5.0]
  def change
    add_column :universities, :CityId, :integer
  end
end
