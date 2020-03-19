require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_team_path
    assert_response :success
  end

  test "should get edit" do
    get edit_team_path(1)
    assert_response :success
  end

  test "should get show" do
    get team_path(1)
    assert_response :success
  end

  test "should get index" do
    get teams_path
    assert_response :success
  end

  test "should post create" do
    post teams_path, params: { team: { name: 'TestTeam' }}
    assert_response :redirect
  end

  test "should patch update" do
    patch team_path(1), params: { team: { name: 'UpdateTest' }}
    assert_response :redirect
  end

  test "should delete a team" do
    delete team_path(2)
    assert_response :redirect
  end
end
