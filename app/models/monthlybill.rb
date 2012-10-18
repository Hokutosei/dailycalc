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

class Monthlybill < ActiveRecord::Base
  attr_accessible :amount, :category, :duedate, :location, :month_id, :payment, :title, :user_id, :year_id, :repetition

  belongs_to :user
  belongs_to :month
  belongs_to :year

  has_many :bills

end
