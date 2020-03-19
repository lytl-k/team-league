class UsersController < ApplicationController
  def new
  end

  def edit
    @user = User.find(params[:id])
    @roles = @user.roles
  end

  def update
    user = User.find(params[:id])

    user.update(user_params)
    user.update(password_params) unless password_params[:password].blank?

    user.roles = params[:roles].map{ |role_id| Role.find(role_id) } if params[:roles]

    redirect_to '/users'
  end

  def create
    user = User.new(user_params.merge(password_params))
    player_role = Role.where(name: 'player').first
    user.roles << player_role

    if user.valid?
      user.save
      redirect_to '/users'
    else
      flash[:notice] = []
      user.errors.full_messages.each { |error| flash[:notice] << error }

      redirect_to '/users/new'
    end
  end

  def destroy
    User.find_by_id(params[:id]).delete

    redirect_to '/users'
  end

  def index
    @users = User.paginate(page: params[:page] || 1, per_page: params[:per_page] || 5)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users.map(&:attributes) }
    end
  end

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # edit.html.erb
      format.json { render json: @user.attributes }
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :surname, :email)
  end

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
