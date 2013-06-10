module V1
  class TaggedReleasesController < ApplicationController
    respond_to :json

    def index
      respond_with TaggedRelease.active.recent
    end

    def show
      respond_with TaggedRelease.find(params[:id])
    end
  end
end
