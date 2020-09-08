class Api::V1::ProgramYearsController < ApplicationController  
  protect_from_forgery unless: -> { request.format.json? }

  def index
  end

  def create
    yearParams = params["_json"]
    selectedYear = ProgramYear.find(yearParams)
    @shows = Show.all
    @weeks = selectedYear.weeks
    @episodes = []
    @weeks.each do |week|
      @episodes << Episode.where(original_air_date: week.friday_date)
    end
    render json: { weekData: @weeks, episodeData: @episodes, showsData: @shows }
  end
end