require 'test_helper'

describe TaggedRelease do

  it "has a valid Fixture" do
    FactoryGirl.build(:tagged_release).must_be :valid?
  end

  describe "scopes" do
    before do
      FactoryGirl.create(:tagged_release)
      FactoryGirl.create(:tagged_release, active: false, tagged_at: Time.now)
    end

    describe ".recent" do
      it "returns the most recent record first" do
        records = TaggedRelease.recent
        records.first.wont_be :active?
      end
    end

    describe ".active" do
      it "returns active records only" do
        records = TaggedRelease.active
        records.count.must_equal 1
      end
    end
  end
  
end
