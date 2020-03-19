require 'test_helper'

class TournamentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_tournament_path
    assert_response :success
  end

  test "should get edit" do
    get edit_tournament_path(1)
    assert_response :success
  end

  test "should get show" do
    get tournament_path(1)
    assert_response :success
  end

  test "should get index" do
    get tournaments_path
    assert_response :success
  end

  test "should post create" do
    post tournaments_path, params: { tournament: { description: 'This is a test tournament' }}
    assert_response :redirect
  end

  test "should patch update" do
    patch tournament_path(1), params: { tournament: { description: 'Test to update tournament' }}
    assert_response :redirect
  end

  test "should delete a tournament" do
    delete tournament_path(1)
    assert_response :redirect
  end
end
