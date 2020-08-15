class Api::V1::EpisodesController < ApplicationController  
  def index
    @episodeCount = Episode.count
    @showCount = Show.count
    render json: { episode_count: @episodeCount, show_count: @showCount }
  end

  def show
  @episodes = Show.find(params[:id]).episodes
  render json: { episodeData: @episodes }
  end
end