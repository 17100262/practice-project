class NowUseThisMigration < ActiveRecord::Migration[5.0]
  def change
    add_column :discipline_universities, :subdiscipline_id, :integer
  end
end
