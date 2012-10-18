class AddYearkeyrIdToMonths < ActiveRecord::Migration
  def change
    add_column :months, :year_id, :integer
  end
end
