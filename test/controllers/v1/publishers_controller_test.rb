require 'test_helper'

class V1::PublishersControllerTest < ActionController::TestCase
  before { request.accept = 'application/json' }

  describe "index" do
    it "returns publishers" do
      must_send([Publisher, :all])
      get :index
      assert_response :success
    end
  end

  describe "show" do
    let(:publisher) { FactoryGirl.create(:publisher) }

    it "returns a publisher" do
      must_send([Publisher, :find, publisher.id])
      get :show, { id: publisher.id }
      assert_response :success
    end
  end
end
