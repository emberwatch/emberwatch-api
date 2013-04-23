class RootController < ApplicationController
  respond_to :json

  def index
    render json: { name: "EmberWatch API" }
  end
end
