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

# require "test_helper"

# describe Account do
#   let(:account) { Account.new }

#   it "must be valid" do
#     value(account).must_be :invalid?
#   end
# end
