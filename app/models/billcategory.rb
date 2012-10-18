# == Schema Information
#
# Table name: billcategories
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Billcategory < ActiveRecord::Base
  attr_accessible :title
end
