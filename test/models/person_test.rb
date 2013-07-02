require 'test_helper'

class PersonTest < ActiveSupport::TestCase

  it "has a valid Factory" do
    FactoryGirl.build(:person).must_be :valid?
  end
end
