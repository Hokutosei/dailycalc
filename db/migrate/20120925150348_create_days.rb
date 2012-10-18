class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :date
      t.string :day
      t.float :timein
      t.float :timeout
      t.float :dailyworkhours
      t.float :totalamount

      t.timestamps
    end
  end
end
