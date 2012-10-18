class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :date
      t.string :day
      t.integer :timein
      t.integer :timeout
      t.integer :dailyworkhours
      t.integer :totalamount

      t.timestamps
    end
  end
end
