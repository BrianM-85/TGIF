require "rails_helper"
require "pry"

RSpec.describe Api::V1::EpisodesController, type: :controller do
  let!(:first_show) { Show.create(
    name: "Test Show",
    description: "This show is about tests",
    image_url: "https://www.google.com",
  ) }

  let!(:first_episode) { Episode.create(
    name: "Test Episode",
    episode_num: 1,
    show_name: "Test Show",
    season: 1,
    original_air_date: 20200130,
    synopsis: "Test description",
    show: first_show
  )}

  describe "GET#show" do
  it "should provide an array of episode objects for a specific show" do
    get :show, params: { id: first_show.id }
    returned_json = JSON.parse(response.body)
    expect(response.status).to eq(200)
    expect(response.content_type).to eq("application/json")

    expect(returned_json["episodeData"][0]["name"]).to eq("Test Episode")
    expect(returned_json["episodeData"][0]["episode_num"]).to eq(1)
    expect(returned_json["episodeData"][0]["show_name"]).to eq("Test Show")
    expect(returned_json["episodeData"][0]["season"]).to eq(1)
    end
  end
end