# == Schema Information
#
# Table name: days
#
#  id             :integer          not null, primary key
#  date           :integer
#  day            :string(255)
#  timein         :integer
#  timeout        :integer
#  dailyworkhours :integer
#  totalamount    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  month_id       :integer
#

require 'test_helper'

class DayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
