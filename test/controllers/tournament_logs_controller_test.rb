require 'test_helper'

class TournamentLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tournament_log = tournament_logs(:one)
  end

  test "should get index" do
    get tournament_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_tournament_log_url
    assert_response :success
  end

  test "should create tournament_log" do
    assert_difference('TournamentLog.count') do
      post tournament_logs_url, params: { tournament_log: { date: @tournament_log.date, player_id: @tournament_log.player_id, points: @tournament_log.points } }
    end

    assert_redirected_to tournament_log_url(TournamentLog.last)
  end

  test "should show tournament_log" do
    get tournament_log_url(@tournament_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_tournament_log_url(@tournament_log)
    assert_response :success
  end

  test "should update tournament_log" do
    patch tournament_log_url(@tournament_log), params: { tournament_log: { date: @tournament_log.date, player_id: @tournament_log.player_id, points: @tournament_log.points } }
    assert_redirected_to tournament_log_url(@tournament_log)
  end

  test "should destroy tournament_log" do
    assert_difference('TournamentLog.count', -1) do
      delete tournament_log_url(@tournament_log)
    end

    assert_redirected_to tournament_logs_url
  end
end
