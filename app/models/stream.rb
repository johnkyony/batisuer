# == Schema Information
#
# Table name: streams
#
#  id         :integer          not null, primary key
#  name       :string
#  grade_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stream < ActiveRecord::Base
  belongs_to :grade
end
