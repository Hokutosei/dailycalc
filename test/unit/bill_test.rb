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

require 'test_helper'

class BillTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
