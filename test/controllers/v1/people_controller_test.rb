require 'test_helper'

class V1::PeopleControllerTest < ActionController::TestCase
  before { request.accept = 'application/json' }

  describe "index" do
    it "returns people" do
      must_send([Person, :all])
      get :index
      assert_response :success
    end
  end

  describe "show" do
    let(:person) { FactoryGirl.create(:person) }

    it "returns a person" do
      must_send([Person, :find, person.id])
      get :show, { id: person.id }
      assert_response :success
    end
  end
end
