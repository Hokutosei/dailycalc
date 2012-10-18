class ChangeDataTypeForBillAmount < ActiveRecord::Migration
  def up
    change_table :bills do |t|
      t.change :amount, :float
    end
  end

  def down
    change_table :bills do |t|
      t.change :amount, :float
    end

  end
end
