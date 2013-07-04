require 'test_helper'

class V1::TalksControllerTest < ActionController::TestCase
  before { request.accept = 'application/json' }

  describe "index" do
    it "returns talks" do
      must_send([Talk, :all])
      get :index
      assert_response :success
    end
  end

  describe "show" do
    let(:talk) { FactoryGirl.create(:talk) }

    it "returns a talk" do
      must_send([Talk, :find, talk.id])
      get :show, { id: talk.id }
      assert_response :success
    end
  end
end
