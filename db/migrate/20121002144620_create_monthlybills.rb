class CreateMonthlybills < ActiveRecord::Migration
  def change
    create_table :monthlybills do |t|
      t.string :title
      t.integer :amount
      t.datetime :duedate
      t.integer :user_id
      t.integer :month_id
      t.integer :year_id
      t.string :payment
      t.string :location
      t.string :category

      t.timestamps
    end
  end
end
