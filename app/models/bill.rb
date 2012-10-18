# == Schema Information
#
# Table name: bills
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  amount         :float(255)
#  due_date       :datetime
#  confirmation   :string(255)
#  user_id        :integer
#  month_id       :integer
#  year_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  monthlybill_id :integer
#

class Bill < ActiveRecord::Base
  attr_accessible :amount, :confirmation, :due_date, :month_id, :title, :user_id, :year_id, :monthlybill_id

  belongs_to :user
  belongs_to :monthlybill

end
