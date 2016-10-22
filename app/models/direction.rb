# == Schema Information
#
# Table name: directions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Direction < ActiveRecord::Base
  has_many :grade
end
