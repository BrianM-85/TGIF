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
    fridayDate = params[:_json]
    @fridayDateParsed = Date.parse(fridayDate)
    episodes = Show.find(params[:id]).episodes.where("original_air_date < ?", @fridayDateParsed)
    rerunEpisode = episodes.sample
    render json: { rerunEpisode: rerunEpisode}
  end

  def holiday
    @episodes = Episode.where.not(tag: nil)
    render json: {holidayEpisodes: @episodes}
  end
end