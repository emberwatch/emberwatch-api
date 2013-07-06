class V1::ScreencastsController < ApplicationController
  respond_to :json

  def index
    respond_with Screencast.all
  end

  def show
    respond_with Screencast.find(params[:id])
  end
end
