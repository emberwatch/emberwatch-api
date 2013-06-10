require 'spec_helper'

describe TaggedRelease do
  it "has a valid Factory" do
    FactoryGirl.build(:tagged_release).should be_valid
  end

  describe "scopes" do
    before do
      FactoryGirl.create(:tagged_release)
      FactoryGirl.create(:tagged_release, active: false, tagged_at: Time.now)
    end

    describe ".recent" do
      it "returns the most recent record first" do
        records = TaggedRelease.recent
        records.first.should_not be_active
      end
    end

    describe ".active" do
      it "returns active records only" do
        records = TaggedRelease.active
        records.count.should == 1
      end
    end
  end
end
