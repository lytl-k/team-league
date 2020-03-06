class TeamsController < ApplicationController
  def new
  end

  def edit
    @team = Team.find(params[:id])
    @players = @team.users
  end

  def update
    team = Team.find(params[:id])
    team.update(team_params)

    team.users = params[:users].map { |user_id| User.find(user_id) } if params[:users]

    redirect_to '/teams'
  end

  def create
    team = Team.new(team_params)
    if params[:users]
      team.users = params[:users].map { |user_id| User.find(user_id) }
      team.coordinator_id = team.users.first.id
    end

    if team.valid?
      team.save
      redirect_to '/teams'
    else
      flash[:notice] = []
      team.errors.full_messages.each { |error| flash[:notice] << error }

      redirect_to '/teams/new'
    end
  end

  def delete
    Team.find_by_id(params[:id]).delete

    redirect_to '/teams'
  end

  def index
    @teams = Team.paginate(page: params[:page] || 1, per_page: params[:per_page] || 5)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teams.map(&:attributes) }
    end
  end

  def show
    @team = Team.find(params[:id])

    respond_to do |format|
      format.html # edit.html.erb
      format.json { render json: @team.attributes }
    end
  end

  private

  def team_params
    params.require(:team).permit(:name, :coordinator_id)
  end
end
