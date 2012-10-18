# == Schema Information
#
# Table name: months
#
#  id          :integer          not null, primary key
#  month       :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  year_id     :integer
#  user_id     :integer
#

require 'test_helper'

class MonthTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
