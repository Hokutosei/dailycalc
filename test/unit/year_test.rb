# == Schema Information
#
# Table name: years
#
#  id          :integer          not null, primary key
#  year        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

require 'test_helper'

class YearTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
