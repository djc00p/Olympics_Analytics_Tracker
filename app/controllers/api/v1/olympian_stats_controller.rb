class Api::V1::OlympianStatsController < ApplicationController
  def index
    oly_stats = OlympianStatsSerializer.new(OlympianStats.new).serialized_json
    serialized = JSON.parse(oly_stats)['data']['attributes']
    render json: { olympian_stats: serialized}
  end
end
