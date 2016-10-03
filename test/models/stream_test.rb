require "test_helper"

describe Stream do
  let(:stream) { Stream.new }

  it "must be valid" do
    value(stream).must_be :valid?
  end
end
