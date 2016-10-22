# == Schema Information
#
# Table name: fees
#
#  id         :integer          not null, primary key
#  grade_id   :integer
#  price      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Fee < ActiveRecord::Base
  belongs_to :grade
  has_many :account
  validates_presence_of :grade
  validates_presence_of :price
  validates_uniqueness_of :grade
end
