class TournamentsController < ApplicationController
  include TournamentsHelper

  def new
  end

  def edit
    @tournament = Tournament.find(params[:id])
    @games = @tournament.games

    @started = @tournament.started?
  end

  def update
    tournament = Tournament.find(params[:id])
    tournament.update(tournament_params)

    tournament.games = params[:games].map { |game_id| Game.find(game_id) } if params[:games]

    redirect_to '/tournaments'
  end

  def create
    tournament = Tournament.new(tournament_params)
    tournament.games = params[:games].map { |game_id| Game.find(game_id) } if params[:games]

    if tournament.valid?
      tournament.save
      redirect_to '/tournaments'
    else
      flash[:notice] = []
      tournament.errors.full_messages.each { |error| flash[:notice] << error }

      redirect_to '/tournaments/new'
    end
  end

  def destroy
    Tournament.find_by_id(params[:id]).delete

    redirect_to '/tournaments'
  end

  def index
    @tournaments = Tournament.paginate(page: params[:page] || 1, per_page: params[:per_page] || 5)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tournaments.map(&:attributes) }
    end
  end

  def show
    @tournament = Tournament.find(params[:id])

    respond_to do |format|
      format.html # edit.html.erb
      format.json { render json: @tournament.attributes }
    end
  end

  def generate
    teams = Team.all
    teams = teams.shuffle[0..-2] if teams.count % 2 != 0

    tournament_from_teams!(teams)

    redirect_to '/tournaments'
  end

  private

  def tournament_params
    params.require(:tournament).permit(:description, :started)
  end
end
