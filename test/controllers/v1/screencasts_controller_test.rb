require 'test_helper'

class V1::ScreencastsControllerTest < ActionController::TestCase
  before { request.accept = 'application/json' }

  describe "index" do
    it "returns screencasts" do
      must_send([Screencast, :all])
      get :index
      assert_response :success
    end
  end

  describe "show" do
    let(:screencast) { FactoryGirl.create(:screencast) }

    it "returns a screencast" do
      must_send([Screencast, :find, screencast.id])
      get :show, { id: screencast.id }
      assert_response :success
    end
  end

end
