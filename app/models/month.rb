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

class Month < ActiveRecord::Base
  attr_accessible :description, :month, :year_id, :user_id

  has_many :days
  has_many :bills

  belongs_to :year
  belongs_to :user
end
