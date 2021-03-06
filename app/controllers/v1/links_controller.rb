module V1
  class LinksController < ApplicationController
    respond_to :json

    def index
      respond_with Link.all
    end

    def show
      respond_with Link.find(params[:id])
    end
  end
end
