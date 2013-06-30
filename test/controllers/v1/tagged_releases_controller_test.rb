require 'test_helper'

describe V1::TaggedReleasesController do

  before { request.accept = 'application/json' }

  describe "index" do
    it "returns tagged_releases" do
      must_send([TaggedRelease, :active])
      must_send([TaggedRelease, :recent])
      get :index
      response.status.must_equal 200
    end
  end
end
