require 'test_helper'

class V1::BooksControllerTest < ActionController::TestCase
  before { request.accept = 'application/json' }

  describe "index" do
    it "returns books" do
      must_send([Book, :all])
      get :index
      assert_response :success
    end
  end

  describe "show" do
    let(:book) { FactoryGirl.create(:book) }

    it "returns a book" do
      must_send([Book, :find, book.id])
      get :show, { id: book.id }
      assert_response :success
    end
  end
end
