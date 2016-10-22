# == Schema Information
#
# Table name: accounts
#
#  id         :integer          not null, primary key
#  student_id :integer
#  grade_id   :integer
#  amount     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  fee_id     :integer
#

class Account < ActiveRecord::Base
  belongs_to :student
  belongs_to :grade
  validates_presence_of :student
  validates_uniqueness_of :student
  validates_presence_of :grade
  validates_presence_of :amount
end
