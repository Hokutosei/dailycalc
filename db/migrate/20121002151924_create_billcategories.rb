class CreateBillcategories < ActiveRecord::Migration
  def change
    create_table :billcategories do |t|
      t.string :title

      t.timestamps
    end
  end
end
