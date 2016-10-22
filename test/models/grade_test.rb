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

require "test_helper"

# describe Grade do
#   let(:grade) { Grade.new }

#   it "must be valid" do
#     value(grade).must_be :invalid?
#   end
# end
