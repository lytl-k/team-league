require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_game_path
    assert_response :success
  end

  test "should get edit" do
    get edit_game_path(1)
    assert_response :success
  end

  test "should get show" do
    get game_path(1)
    assert_response :success
  end

  test "should get index" do
    get games_path
    assert_response :success
  end

  test "should post create" do
    post games_path, params: { game: { description: 'This is a test game' }}
    assert_response :redirect
  end

  test "should patch update" do
    patch game_path(1), params: { game: { description: 'Testing the update of a game...' }}
    assert_response :redirect
  end

  test "should delete a game" do
    delete game_path(2)
    assert_response :redirect
  end
end
