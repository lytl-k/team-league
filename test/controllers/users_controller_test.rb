require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get '/users/new'
    assert_response :success
  end

  test "should get edit" do
    get '/users/1/edit'
    assert_response :success
  end

  test "should get show" do
    get '/users/1'
    assert_response :success
  end

  test "should get index" do
    get '/users'
    assert_response :success
  end
end
