require 'test_helper'

class ScreencastTest < ActiveSupport::TestCase

  it "has a valid Factory" do
    FactoryGirl.build(:book).must_be :valid?
  end
end
