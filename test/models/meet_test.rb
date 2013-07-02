require 'test_helper'

class MeetTest < ActiveSupport::TestCase

  it "has a valid Factory" do
    FactoryGirl.build(:meet).must_be :valid?
  end
end
