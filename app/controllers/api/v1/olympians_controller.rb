class  Api::V1::OlympiansController < ApplicationController
  def index
  #   olympians = Olympian.all
  #   serialized = OlympiansSerializer.new(olympians)
    render json: { olympians: Olympian.olympians }
    #
  end
end
