require 'test_helper'

class V1::MeetsControllerTest < ActionController::TestCase
  before { request.accept = 'application/json' }

  describe "index" do
    it "returns meets" do
      must_send([Meet, :all])
      get :index
      assert_response :success
    end
  end

  describe "show" do
    let(:meet) { FactoryGirl.create(:meet) }

    it "returns a meet" do
      must_send([Meet, :find, meet.id])
      get :show, { id: meet.id }
      assert_response :success
    end
  end
end
