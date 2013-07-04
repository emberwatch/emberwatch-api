module V1
  class TalksController < ApplicationController
    respond_to :json

    def index
      respond_with Talk.all
    end

    def show
      respond_with Talk.find(params[:id])
    end
  end
end
