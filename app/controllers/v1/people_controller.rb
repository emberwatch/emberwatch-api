module V1
  class PeopleController < ApplicationController
    respond_to :json

    def index
      respond_with Person.all
    end

    def show
      respond_with Person.find(params[:id])
    end
  end
end
