module V1
  class MeetsController < ApplicationController
    respond_to :json

    def index
      respond_with Meet.all
    end

    def show
      respond_with Meet.find(params[:id])
    end
  end
end
