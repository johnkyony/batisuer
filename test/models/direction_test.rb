require "test_helper"

describe Direction do
  let(:direction) { Direction.new }

  it "must be valid" do
    value(direction).must_be :valid?
  end
end
