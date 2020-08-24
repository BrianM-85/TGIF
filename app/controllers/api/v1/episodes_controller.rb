class Api::V1::EpisodesController < ApplicationController 
  protect_from_forgery unless: -> { request.format.json? }

  def index
    @episodeCount = Episode.count
    @showCount = Show.count
    render json: { episode_count: @episodeCount, show_count: @showCount }
  end

  def show
  @episodes = Show.find(params[:id]).episodes
  render json: { episodeData: @episodes }
  end

  def rerun
    @season = params[:_json]
    if @season = 1 do
      @season = 2
    end
    @episodes = Show.find(params[:id]).episodes.where(season: (@season - 1))
  end
end