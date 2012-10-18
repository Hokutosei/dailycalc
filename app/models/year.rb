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

class Year < ActiveRecord::Base
  attr_accessible :description, :year, :user_id

  belongs_to :user
  has_many :months

  has_many :bills
end
