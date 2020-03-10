require 'test_helper'

class TournamentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get '/tournaments/new'
    assert_response :success
  end

  test "should get edit" do
    get '/tournaments/1/edit'
    assert_response :success
  end

  test "should get show" do
    get '/tournaments/1'
    assert_response :success
  end

  test "should get index" do
    get '/tournaments'
    assert_response :success
  end

  test "should post create" do
    post '/tournaments', params: { tournament: { description: 'This is a test tournament' }}
    assert_response :redirect
  end

  test "should patch update" do
    patch '/tournaments/1', params: { tournament: { description: 'Test to update tournament' }}
    assert_response :redirect
  end

  test "should delete a tournament" do
    delete '/tournaments/1'
    assert_response :redirect
  end
end
