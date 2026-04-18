require "test_helper"

class SeriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @series = series(:one)
  end

  test "should get index" do
    get series_index_url
    assert_response :success
  end

  test "should get new" do
    get new_series_url
    assert_response :success
  end

  test "should create series" do
    assert_difference("Series.count") do
      post series_index_url, params: { series: { bottom_seed_id: @series.bottom_seed_id, bottom_seed_wins: @series.bottom_seed_wins, conference: @series.conference, next_game_at: @series.next_game_at, round: @series.round, season: @series.season, status: @series.status, top_seed_id: @series.top_seed_id, top_seed_wins: @series.top_seed_wins, winner_id: @series.winner_id } }
    end

    assert_redirected_to series_url(Series.last)
  end

  test "should show series" do
    get series_url(@series)
    assert_response :success
  end

  test "should get edit" do
    get edit_series_url(@series)
    assert_response :success
  end

  test "should update series" do
    patch series_url(@series), params: { series: { bottom_seed_id: @series.bottom_seed_id, bottom_seed_wins: @series.bottom_seed_wins, conference: @series.conference, next_game_at: @series.next_game_at, round: @series.round, season: @series.season, status: @series.status, top_seed_id: @series.top_seed_id, top_seed_wins: @series.top_seed_wins, winner_id: @series.winner_id } }
    assert_redirected_to series_url(@series)
  end

  test "should destroy series" do
    assert_difference("Series.count", -1) do
      delete series_url(@series)
    end

    assert_redirected_to series_index_url
  end
end
