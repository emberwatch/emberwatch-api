module V1
  class PublishersController < ApplicationController
    respond_to :json

    def index
      respond_with Publisher.all
    end

    def show
      respond_with Publisher.find(params[:id])
    end
  end
end
