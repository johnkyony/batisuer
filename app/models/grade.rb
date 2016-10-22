# == Schema Information
#
# Table name: grades
#
#  id           :integer          not null, primary key
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  direction_id :integer
#

class Grade < ActiveRecord::Base
  belongs_to :direction
  has_many :fee  
  has_many :stream
  validates_presence_of :name
  validates_uniqueness_of :name
end
