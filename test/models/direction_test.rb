# == Schema Information
#
# Table name: directions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "test_helper"

describe Direction do
  let(:direction) { Direction.new }

  it "must be valid" do
    value(direction).must_be :valid?
  end
end
