class AddMonthlyBillIdToBills < ActiveRecord::Migration
  def change
    add_column :bills, :monthlybill_id, :integer
  end
end
