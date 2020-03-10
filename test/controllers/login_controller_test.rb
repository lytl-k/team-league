require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test 'login page loads' do
    get '/'
    assert_response :success
  end

  test 'user does not login' do
    post '/login'
    assert_response :redirect
    assert_equal 'Username or password is incorrect', flash[:notice]
  end

  test 'user logs in successfully' do
    post '/login', params: { login: { email: 'epic_user@team.com', password: 'test_password' } }
    assert_redirected_to '/home'
  end
end
