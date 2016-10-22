# == Schema Information
#
# Table name: receipts
#
#  id         :integer          not null, primary key
#  student_id :integer
#  amount     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Receipt < ActiveRecord::Base
  belongs_to :student
  validates_presence_of :student
  validates_presence_of :amount
end
