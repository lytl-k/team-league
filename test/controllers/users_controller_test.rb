require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_user_path
    assert_response :success
  end

  test "should get edit" do
    get edit_user_path(1)
    assert_response :success
  end

  test "should get show" do
    get user_path(1)
    assert_response :success
  end

  test "should get index" do
    get users_path
    assert_response :success
  end

  test "should post create" do
    post users_path, params: { user: {name: 'test', surname: 'user', email: 'test.user@email.com' }}
    assert_response :redirect
  end

  test "should patch update" do
    patch user_path(1), params: { user: {name: 'test', surname: 'update' }}
    assert_response :redirect
  end

  test "should delete a user" do
    delete user_path(2)
    assert_response :redirect
  end
end
