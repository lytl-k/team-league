require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get '/teams/new'
    assert_response :success
  end

  test "should get edit" do
    get '/teams/1/edit'
    assert_response :success
  end

  test "should get show" do
    get '/teams/1'
    assert_response :success
  end

  test "should get index" do
    get '/teams'
    assert_response :success
  end

  test "should post create" do
    post '/teams', params: { team: { name: 'TestTeam' }}
    assert_response :redirect
  end

  test "should patch update" do
    patch '/teams/1', params: { team: { name: 'UpdateTest' }}
    assert_response :redirect
  end

  test "should delete a team" do
    delete '/teams/2'
    assert_response :redirect
  end
end
