# == Schema Information
#
# Table name: monthlybills
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  amount     :integer
#  duedate    :datetime
#  user_id    :integer
#  month_id   :integer
#  year_id    :integer
#  payment    :string(255)
#  location   :string(255)
#  category   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  repetition :integer
#

require 'test_helper'

class MonthlybillTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
