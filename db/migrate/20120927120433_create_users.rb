class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.float :perhour

      t.timestamps
    end
  end
end
