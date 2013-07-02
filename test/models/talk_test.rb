require 'test_helper'

class TalkTest < ActiveSupport::TestCase

  it "has a valid Factory" do
    FactoryGirl.build(:talk).must_be :valid?
  end
end
