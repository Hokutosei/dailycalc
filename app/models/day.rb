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

class Day < ActiveRecord::Base
  attr_accessible :dailyworkhours, :date, :day, :timein, :timeout, :totalamount, :month_id

  belongs_to :month

end
