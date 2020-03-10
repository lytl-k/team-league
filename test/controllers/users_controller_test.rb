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

  test "should post create" do
    post '/users', params: { user: {name: 'test', surname: 'user', email: 'test.user@email.com' }}
    assert_response :redirect
  end

  test "should patch update" do
    patch '/users/1', params: { user: {name: 'test', surname: 'update' }}
    assert_response :redirect
  end

  test "should delete a user" do
    delete '/users/2'
    assert_response :redirect
  end
end
