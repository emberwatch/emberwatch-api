require 'test_helper'

describe Publisher do
  it "has a valid Fixture" do
    FactoryGirl.build(:publisher).must_be :valid?
  end
end
