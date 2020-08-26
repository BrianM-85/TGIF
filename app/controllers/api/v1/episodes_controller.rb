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
    @fridayDate = params[:_json]
    @episodes = Show.find(params[:id]).episodes.where("original_air_date" < @fridayDate)
    @rerunEpisode = @episodes.sample
    render json: { rerunEpisode: @rerunEpisode}
  end
end