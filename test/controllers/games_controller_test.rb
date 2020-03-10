require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get '/games/new'
    assert_response :success
  end

  test "should get edit" do
    get '/games/1/edit'
    assert_response :success
  end

  test "should get show" do
    get '/games/1'
    assert_response :success
  end

  test "should get index" do
    get '/games'
    assert_response :success
  end

  test "should post create" do
    post '/games', params: { game: { description: 'This is a test game' }}
    assert_response :redirect
  end

  test "should patch update" do
    patch '/games/1', params: { game: { description: 'Testing the update of a game...' }}
    assert_response :redirect
  end

  test "should delete a game" do
    delete '/games/2'
    assert_response :redirect
  end
end
