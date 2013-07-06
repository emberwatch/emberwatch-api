require 'test_helper'

class V1::PodcastsControllerTest < ActionController::TestCase
  before { request.accept = 'application/json' }

  describe "index" do
    it "returns podcasts" do
      must_send([Podcast, :all])
      get :index
      assert_response :success
    end
  end

  describe "show" do
    let(:podcast) { FactoryGirl.create(:podcast) }

    it "returns a podcast" do
      must_send([Podcast, :find, podcast.id])
      get :show, { id: podcast.id }
      assert_response :success
    end
  end

end
