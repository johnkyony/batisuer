# == Schema Information
#
# Table name: students
#
#  id               :integer          not null, primary key
#  name             :string
#  surname          :string
#  parent_id        :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  profile_image_id :string
#

# require "test_helper"

# describe Student do
#   let(:student) { Student.new }

#   it "must be valid" do
#     value(student).must_be :invalid?
#   end
# end
