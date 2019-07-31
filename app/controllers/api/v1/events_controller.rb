class Api::V1::EventsController < ApplicationController

  def index
    render json: SportsSerializer.new(Sport.all)
  end

end
