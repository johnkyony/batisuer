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

require "test_helper"

describe Stream do
  let(:stream) { Stream.new }

  it "must be valid" do
    value(stream).must_be :valid?
  end
end
