class V1::PodcastsController < ApplicationController
  respond_to :json

  def index
    respond_with Podcast.all
  end

  def show
    respond_with Podcast.find(params[:id])
  end
end
