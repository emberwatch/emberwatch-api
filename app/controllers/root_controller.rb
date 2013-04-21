class RootController < ApplicationController
  def index
    render json: { name: "EmberWatch API" }
  end
end
