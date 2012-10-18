class AddUserIdToMonths < ActiveRecord::Migration
  def change
    add_column :months, :user_id, :integer
  end
end
