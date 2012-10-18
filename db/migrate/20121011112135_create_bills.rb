class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :title
      t.string :amount
      t.timestamp :due_date
      t.string :confirmation
      t.integer :user_id
      t.integer :month_id
      t.integer :year_id

      t.timestamps
    end
  end
end
