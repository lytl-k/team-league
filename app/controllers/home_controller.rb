class HomeController < ApplicationController
  def index
    @user = User.find(session[:current_user_id])

    # Only league masters can manage users / player
    @league_master = @user.roles.find { |role| role.name == 'league_master' }
  end

  def logout
    session[:current_user_id] = nil
    redirect_to '/'
  end
end
