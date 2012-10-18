class AddPaymentRepetitionToMonthlybills < ActiveRecord::Migration
  def change
    add_column :monthlybills, :repetition, :integer
  end
end
