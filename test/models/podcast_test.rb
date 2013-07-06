require 'test_helper'

class PodcastTest < ActiveSupport::TestCase

  it "has a valid factory" do
    FactoryGirl.build(:podcast).must_be :valid?
  end
end
